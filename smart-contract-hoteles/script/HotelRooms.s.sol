// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import "forge-std/Script.sol";
import {HotelRooms} from "../src/HotelRooms.sol";

contract DeployHotelRooms is Script {
    function run() external {
        vm.startBroadcast(); // uses the key passed via --private-key

        string memory metadataBaseURI = "https://davis-knowing-surrounding-buttons.trycloudflare.com/api/metadata/";
        HotelRooms hotel = new HotelRooms(metadataBaseURI);

        console.log("HotelRooms deployed at:", address(hotel));
        vm.stopBroadcast();
    }
}
