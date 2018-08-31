require './task.rb'
require './composite_task.rb'
class AddDryIngredientsTask < Task
  def initialize
    super('Add dry ingredients')
  end

  def get_time_required
    1.0
  end
end

class MixTask < Task
  def initialize
    super('Mix that batter up')
  end

  def get_time_required
    3.0
  end
end

class AddLiquidsTask < Task
  def initialize
    super('Add Liquids')
  end

  def get_time_required
    4.0
  end
end

class FillPanTask < Task
  def initialize
    super('Fill pan')
  end

  def get_time_required
    2.0
  end
end

class FrostTask < Task
  def initialize
    super('Frost')
  end

  def get_time_required
    2.0
  end
end

class BakeTask < Task
  def initialize
    super('Bake')
  end

  def get_time_required
    2.0
  end
end

class LickSpoonTask < Task
  def initialize
    super('Bake')
  end

  def get_time_required
    100.0
  end
end

class MakeBatterTask < CompositeTask
  def initialize
    super('Make batter')
    add_sub_task(AddDryIngredientsTask.new)
    add_sub_task(AddLiquidsTask.new)
    add_sub_task(MixTask.new)
  end
end

class MakeCakeTask < CompositeTask
  def initialize
    super('Make cake')
    add_sub_task(MakeBatterTask.new)
    add_sub_task(FillPanTask.new)
    add_sub_task(BakeTask.new)
    add_sub_task(FrostTask.new)
    add_sub_task(LickSpoonTask.new)
  end
end

p MakeCakeTask.new.get_time_required
