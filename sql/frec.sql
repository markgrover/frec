USE frec;
INSERT INTO account 
            (name) 
VALUES      ('Vanguard ROTH IRA Brokerage'); 

INSERT INTO category 
            (name) 
VALUES      ('US Stocks'), 
            ('VWO'), 
            ('VB'), 
            ('VXUS'), 
            ('Bonds'), 
            ('Cash'); 

INSERT INTO target_alloc 
            ( 
                        aid, 
                        cid, 
                        allocation 
            ) 
SELECT account.id, 
       category.id, 
       alloc 
FROM   account 
JOIN 
       ( 
              SELECT 'US Stocks' AS name, 
                     '30.0'      AS alloc 
              UNION ALL 
              SELECT 'VWO', 
                     '10.0' 
              UNION ALL 
              SELECT 'VB', 
                     '20.0' 
              UNION ALL 
              SELECT 'VXUS', 
                     '10.0' 
              UNION ALL 
              SELECT 'Bonds', 
                     '30.0' ) t2 
JOIN   category 
ON     ( 
              t2.name = category.name) 
where  account.name = 'Vanguard ROTH IRA Brokerage';
