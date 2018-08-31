package main

import "fmt"

type BuildProcess interface {
	SetCPU() BuildProcess
	SetHardDisk() BuildProcess
	SetMemory() BuildProcess
	GetComputer() Computer
}

type CPU interface{}
type BasicCPU struct {
	CPU
}

type TurboCPU struct {
	CPU
}

type Motherboard struct {
	MemorySize int64
	CPU        CPU
}

type Computer struct {
	Display     string
	Motherboard Motherboard
	Drives      []Drive
}

type Drive struct {
	Type string
	Size int64
}

type Director struct {
	builder BuildProcess
}

func (f *Director) Construct() {
	f.builder.SetCPU().SetHardDisk().SetMemory()
}

func (f *Director) SetBuilder(b BuildProcess) {
	f.builder = b
}

type LaptopBuilder struct {
	c Computer
}

func (l *LaptopBuilder) SetCPU() BuildProcess {
	l.c.Motherboard.CPU = BasicCPU{}
	return l
}

func (l *LaptopBuilder) SetHardDisk() BuildProcess {
	l.c.Drives = append(l.c.Drives, Drive{Type: "HardDisk", Size: 50000})
	return l
}

func (l *LaptopBuilder) SetMemory() BuildProcess {
	l.c.Motherboard.MemorySize = 10000
	return l
}

func (l *LaptopBuilder) GetComputer() Computer {
	return l.c
}

type DesktopBuilder struct {
	c Computer
}

func (d *DesktopBuilder) SetCPU() BuildProcess {
	d.c.Motherboard.CPU = TurboCPU{}
	return d
}
func (d *DesktopBuilder) SetHardDisk() BuildProcess {
	d.c.Drives = append(d.c.Drives, Drive{Type: "HardDisk", Size: 200000})
	return d
}

func (d *DesktopBuilder) SetMemory() BuildProcess {
	d.c.Motherboard.MemorySize = 20000
	return d
}
func (d *DesktopBuilder) GetComputer() Computer {
	return d.c
}

func main() {
	director := Director{}

	laptopBuilder := &LaptopBuilder{}
	director.SetBuilder(laptopBuilder)
	director.Construct()

	laptop := laptopBuilder.GetComputer()

	desktopBuilder := &DesktopBuilder{}
	director.SetBuilder(desktopBuilder)
	director.Construct()

	desktop := desktopBuilder.GetComputer()
	fmt.Println(laptop.Motherboard.MemorySize)
	fmt.Println(desktop.Motherboard.MemorySize)
}
