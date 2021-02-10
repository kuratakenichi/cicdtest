-- 動作確認用SQL
SELECT
  FR.id,
  FR.name_jp,
  FR.name_en,
  FM.price,
FROM
  test_kurata_tool_trial.fruit_tbl AS FR
  INNER JOIN test_kurata_tool_trial.fruitmst_mst AS FM ON FR.name_en = FM.name_en
WHERE
  FM.price >= @price