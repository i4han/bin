_ = require 'underscore'
Bitstamp = require 'bitstamp'
bitstamp = new Bitstamp
myBitstamp = undefined
next = ->
    readline.prompt()
readline = require('readline').createInterface process.stdin, process.stdout
readline.setPrompt('Bitstamp> ')
readline.prompt()
readline.on('line', (line) ->
    line = line.replace(/\s{2,}/g,' ').trim().split ' '
    command = line[0]
    arg = line.slice(1)
    switch command
        when 'connect'
            myBitstamp = new Bitstamp '5tayiu87JPfm8ufWOhiaeGQD0mb6NcMW', '7Aae3KBwwVeTY1ap4MV3froZIcmf6MLD', arg[0]
            console.log myBitstamp
            next()
        when 'ticker'
            bitstamp.ticker (console.log);
        when 'buy', 'b'
            console.log 'buy'
            next()
        when 'sell', 's' 
            console.log 'sell'
            next()
        when 'balance'
            myBitstamp.balance (code, obj) -> 
                console.log obj
                next()
        when 'orders'
            console.log 'orders'
            next()
        when 'list'
            console.log 'list'
            next()
        when 'book'
            console.log 'book'
            next()
        when ''
            next()
        else 
            console.log 'Unknown command.'
            next()
).on 'close', () ->
    console.log 'bye!'
    process.exit 0
    
###
#bitstamp.transactions({time: 'hour'}, console.log);
#bitstamp.order_book(false, console.log);
#privateBitstamp.user_transactions(100, console.log);
#privateBitstamp.open_orders(console.log);
#privateBitstamp.cancel_order(id, console.log);
#privateBitstamp.buy(amount, price, console.log);
#privateBitstamp.sell(amount, price, console.log);
               
f = {
 key: undefined                                                                                                                               
  secret: undefined                                                                                                                             
  client_id: undefined                                                                                                                          
  _get: undefined                                                                                                                              
  _post: undefined                                                                                                                             
  _request: undefined                                                                                                                          
  balance: undefined                                                                                                                           
  bitcoin_deposit_address: undefined                                                                                                           
  bitcoin_withdrawal: undefined                                                                                                                
  bitinstant: undefined                                                                                                                        
  buy: undefined                                                                                                                               
  cancel_order: undefined                                                                                                                     
  check_code: undefined                                                                                                                       
  create_code: undefined                                                                                                                       
  eur_usd: undefined                                                                                                                           
  open_orders: undefined                                                                                                                       
  order_book: undefined                                                                                                                        
  redeem_code: undefined                                                                                                                       
  ripple_address: undefined                                                                                                                    
  ripple_withdrawal: undefined                                                                                                                 
  sell: undefined                                                                                                                              
  ticker: undefined                                                                                                                            
  transactions: undefined                                                                                                                      
  unconfirmed_btc: undefined                                                                                                                   
  user_transactions: undefined                                                                                                                 
  withdrawal_requests: undefined
} ###