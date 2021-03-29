require 'pg'

$conn = PG::Connection.open(:dbname => 'dbcuti_m3', :user => 'wrdev', :password => 'Majuber54Ma2020!', :host => '139.99.67.15', :port => '5423')


def getLastStatusForCancel()
  rows = $conn.exec("select form_id, status from tb_leave where form_id = 79 AND status = 'Canceled'")
  rows.each{| row | p row}

  return true
end

def getActualCreateLeaveID()
  rows = $conn.exec("select form_id from tb_leave order by form_id DESC limit 1")
  # rows.each{| row | p row}
end

def getLastLeaveID()
  rows = $conn.exec("select form_id from tb_leave order by form_id DESC limit 1")
end

