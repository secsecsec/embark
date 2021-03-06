rw :: IPRewriter(pattern 8.0.0.2 9555 - - 0 1);

pd1::PollDevice(eth4, QUEUE 0, BURST 32) -> Strip(14) -> CheckIPHeader2() -> MarkIPHeader() -> [0]rw;
rw[0] -> q1::SimpleQueue() -> sd1::SendDevice(eth7, BURST 32, QUEUE 0);
rw[1] -> dd::Discard();

//pd2::PollDevice(eth5, QUEUE 0, BURST 32) -> Strip(14) -> CheckIPHeader2() -> MarkIPHeader() -> q2::SimpleQueue() -> sd2::SendDevice(eth6, BURST 32, QUEUE 0);


StaticThreadSched(pd1 0, q1 0, sd1 0);
//StaticThreadSched(pd2 1, q2 1, sd2 1);


//DFromToDevice(0, PORTID_R 0, PORTID_T 3);
//DFromToDevice(0, PORTID_R 1, PORTID_T 2);

//pd3::PollDevice(eth7, QUEUE 0, BURST 32) -> q3::NotifierQueue() -> sd3::SendDevice(eth4, BURST 32, QUEUE 0);

//pd4::PollDevice(eth6, QUEUE 0, BURST 32) -> q4::NotifierQueue() -> sd4::SendDevice(eth5, BURST 32, QUEUE 0);

//StaticThreadSched(pd3 2, q3 2, sd3 2);
//StaticThreadSched(pd4 3, q4 3, sd4 3);


//rt :: StaticIPLookup(
//   192.168.210.0/24 0,
//   192.168.111.0/24 1);

//pd1::PollDevice(eth4, PORTID 0, QUEUE 0, BURST 32) -> Strip(14) -> CheckIPHeader2() -> rt; 

//rt[0] -> q1::Queue(100) -> DecIPTTL -> EtherEncap(0x0800, 1:1:1:1:1:1, 2:2:2:2:2:2)
//      -> sd1::SendDevice(eth4, BURST 32, PORTID 1, QUEUE 0);

//rt[1] -> q2::Queue(100) -> DecIPTTL -> EtherEncap(0x0800, 1:11:11:11:11:11, 2:22:22:22:22:22)
//      -> sd3::SendDevice(eth5, BURST 32, PORTID 2, QUEUE 0);
