class Team
  attr_reader :roster
    def initialize(name, city)
      @roster = []
    end

    def player_count
      roster.count
    end

    def add_player(player)
      @roster << player
    end

    def long_term_players
      players = []
      roster.each do |player|
        if player.contract_length > 24 then
          players << player
        end
      end
      players
    end

    def short_term_players
      players = []
      roster.each do |player|
        if player.contract_length <= 24 then
          players << player
        end
      end
      players
    end

    def total_value
      total = 0
        roster.each do |player|
        total += (player.monthly_cost * player.contract_length)
        end
        total
    end

    def details
      deets = {
        "total_value" => self.total_value,
        "player_count" => self.player_count
      }
      deets
    end

    def average_cost_of_player
      cost = self.total_value / self.player_count
      "$#{cost.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse}"
    end

    def players_by_last_name
      last_names = roster.map do |player|
        player.last_name
      end.sort.join(', ')
      last_names
    end
end
