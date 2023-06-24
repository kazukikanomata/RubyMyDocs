class Gate

    STATIONS = [:umeda, :juso, :mikuni]
    FARES = [160, 190]

    def initialize(name)
        @name = name
    end

    def calc_fare(ticket)
        from = STATIONS.index(ticket.stamp_at).to_i #添字を取得するメソッド
        to = STATIONS.index(@name).to_i
        distance = to - from
        FARES[distance - 1]        
    end
    
    def enter(ticket)
        # TODO: 引数に自分の駅名を保存する
        ticket.stamp(@name)
    end

    def exit(ticket)
        #引数の切符から運賃と乗車駅を取得する
        #乗車駅から自分の駅名と運賃を割り出す。
        fare = calc_fare(ticket)
        fare <= ticket.fare
    end
end
