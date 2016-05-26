Feature: "net_tester kill" コマンド

  NetTester ユーザは、"net_tester kill" コマンドで
  起動中の NetTester を停止できる。

  kill コマンドは次のものを停止する:
  - OpenFlow コントローラ
  - 仮想スイッチ
  - 仮想ホスト
  - 仮想リンク

  Scenario: 起動中の NetTester を "net_tester kill" で停止
    Given NetTester でテストホスト 3 台を起動
    When コマンド `net_tester kill` を実行
    Then 終了ステータスは 0
    And コマンドの出力はなし
    And OpenFlow コントローラが停止
    And すべてのスイッチが停止
    And すべてのリンクが停止
    And 次の仮想ホストがすべて停止:
      | host1 |
      | host2 |
      | host3 |

  Scenario: NetTester を起動せずいきなり kill
    When コマンド `net_tester kill` を実行
    Then 終了ステータスは 0
    And コマンドの出力はなし

