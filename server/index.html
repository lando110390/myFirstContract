<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Coursetro Smart Contract</title>

    <link rel="stylesheet" type="text/css" href="main.css">

    <script src="./node_modules/web3/dist/web3.min.js"></script>
    <script src="./node_modules/eth-client/dist/eth-client.min.js"></script>
</head>
<body>
    <div class="container">
        <h3>List Book</h3>
        <div id="instructor">
          <ul>
          </ul>
        </div>
        <hr>
          <h3>Book Detail</h3>
          <p class="detail">Book Name: <span id="detail_book_name">&nbsp;</span></p>
          <p class="detail">Author: <span id="detail_author">&nbsp;</span></p>
        <hr>
        <p id="insTrans"></p>
        <img id="loader" src="https://loading.io/spinners/double-ring/lg.double-ring-spinner.gif">

        <label for="name" class="col-lg-2 control-label">Book Name</label>
        <input id="book_name" type="text">

        <label for="name" class="col-lg-2 control-label">Author</label>
        <input id="author" type="text">

        <button id="button">ADD BOOK</button>


    </div>

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>

    <script>
       if (typeof web3 !== 'undefined') {
           web3 = new Web3(web3.currentProvider);
       } else {
           web3 = new Web3(new Web3.providers.HttpProvider("http://localhost:8545"));
       }

       web3.eth.defaultAccount = web3.eth.accounts[0];

       var CoursetroContract = web3.eth.contract([
    {
      "constant": true,
      "inputs": [
        {
          "name": "_address",
          "type": "address"
        }
      ],
      "name": "getInstructor",
      "outputs": [
        {
          "name": "",
          "type": "string"
        },
        {
          "name": "",
          "type": "string"
        },
        {
          "name": "",
          "type": "address"
        }
      ],
      "payable": false,
      "stateMutability": "view",
      "type": "function"
    },
    {
      "constant": true,
      "inputs": [],
      "name": "getInstructors",
      "outputs": [
        {
          "name": "",
          "type": "address[]"
        }
      ],
      "payable": false,
      "stateMutability": "view",
      "type": "function"
    },
    {
      "constant": true,
      "inputs": [
        {
          "name": "",
          "type": "uint256"
        }
      ],
      "name": "instructorAccts",
      "outputs": [
        {
          "name": "",
          "type": "address"
        }
      ],
      "payable": false,
      "stateMutability": "view",
      "type": "function"
    },
    {
      "constant": true,
      "inputs": [],
      "name": "countInstructors",
      "outputs": [
        {
          "name": "",
          "type": "uint256"
        }
      ],
      "payable": false,
      "stateMutability": "view",
      "type": "function"
    },
    {
      "constant": false,
      "inputs": [
        {
          "name": "_address",
          "type": "address"
        },
        {
          "name": "_bookName",
          "type": "string"
        },
        {
          "name": "_author",
          "type": "string"
        }
      ],
      "name": "setInstructor",
      "outputs": [],
      "payable": false,
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "anonymous": false,
      "inputs": [
        {
          "indexed": false,
          "name": "_bookName",
          "type": "string"
        },
        {
          "indexed": false,
          "name": "_author",
          "type": "string"
        }
      ],
      "name": "InstructorInfo",
      "type": "event"
    }
  ]);

       var Coursetro = CoursetroContract.at('0xa5ee39f7e6bcc479b1d29b60d0d8d11a326a06e9');

       Coursetro.getInstructors(function(error, result) {
        for (var i = 0; i < result.length; i++) {
          if (error) {
            console.log(error);
            return false;
          }
          var liEle = $("<li></li>").html(result[i]);
          liEle.click(function(e){
            $("#loader").show();
            Coursetro.getInstructor($(this).text(), function(err, res) {
                $("#loader").hide();
               if (err) {
                console.log(err);
                return false;
               }
               $("#detail_book_name").html(res[0]);
               $("#detail_author").html(res[1]);
           });
          });
          liEle.appendTo("#instructor ul");
        }
       });


      var instructorEvent = Coursetro.InstructorInfo({}, 'latest');
      instructorEvent.watch(function(error, result) {
        $("#loader").hide();
        if (!error) {
          console.log(result);
          if (result.blockHash != $("#insTrans").html())
            $("#insTrans").html('Block Hash: ' + result.blockHash);
          var liEle = $("<li></li>").html(result.args._bookName +' (author: '+result.args._author + ')');
          liEle.appendTo("#instructor ul");
        } else {
          console.log(error);
        }
      });

        var baseUrl = "https://beta.blockchain.z.com";

       $("#button").click(function() {
          if (!$("#book_name").val() || !$("#author").val()) {
            alert("Please input info");
            return false;
          }
          ethClient.Account.create(baseUrl, '', function(err, _account) {
            var account = _account;
            console.log(account.getAddress());
            Coursetro.setInstructor(account.getAddress(), $("#book_name").val(), $("#author").val(), (err, res) => {
              if (err) {
                $("#loader").hide();
                console.log(err);
              } else {
                console.log(res);
              }
           });
          });

           $("#loader").show();
       });

    </script>

</body>
</html>