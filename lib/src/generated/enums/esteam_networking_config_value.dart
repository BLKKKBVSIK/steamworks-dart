// ignore_for_file: public_member_api_docs
import "dart:ffi";

typedef ESteamNetworkingConfigValueAliasDart = int;
typedef ESteamNetworkingConfigValueAliasC = Int32;

enum ESteamNetworkingConfigValue {
  invalid(0),
  fakePacketLossSend(2),
  fakePacketLossRecv(3),
  fakePacketLagSend(4),
  fakePacketLagRecv(5),
  fakePacketReorderSend(6),
  fakePacketReorderRecv(7),
  fakePacketReorderTime(8),
  sendBufferSize(9),
  sendRateMin(10),
  sendRateMax(11),
  nagleTime(12),
  logLevelAckRTT(13),
  logLevelPacketDecode(14),
  logLevelMessage(15),
  logLevelPacketGaps(16),
  logLevelP2pRendezvous(17),
  logLevelSdrRelayPings(18),
  sdrClientConsecutitivePingTimeoutsFailInitial(19),
  sdrClientConsecutitivePingTimeoutsFail(20),
  sdrClientMinPingsBeforePingAccurate(21),
  sdrClientSingleSocket(22),
  ipAllowWithoutAuth(23),
  timeoutInitial(24),
  timeoutConnected(25),
  fakePacketDupSend(26),
  fakePacketDupRecv(27),
  fakePacketDupTimeMax(28),
  sdrClientForceRelayCluster(29),
  sdrClientDebugTicketAddress(30),
  sdrClientForceProxyAddr(31),
  mTUPacketSize(32),
  mTUDataSize(33),
  unencrypted(34),
  deletedEnumerateDevVars(35),
  sdrClientFakeClusterPing(36),
  symmetricConnect(37),
  localVirtualPort(38),
  dualWifiEnable(39),
  connectionUserData(40),
  packetTraceMaxBytes(41),
  fakeRateLimitSendRate(42),
  fakeRateLimitSendBurst(43),
  fakeRateLimitRecvRate(44),
  fakeRateLimitRecvBurst(45),
  enableDiagnosticsUI(46),
  p2pSTUNServerList(103),
  p2pTransportIceEnable(104),
  p2pTransportIcePenalty(105),
  p2pTransportSdrPenalty(106),
  p2pTURNServerList(107),
  p2pTURNUserList(108),
  p2pTURNPassList(109),
  p2pTransportIceImplementation(110),
  callbackConnectionStatusChanged(201),
  callbackAuthStatusChanged(202),
  callbackRelayNetworkStatusChanged(203),
  callbackMessagesSessionRequest(204),
  callbackMessagesSessionFailed(205),
  callbackCreateConnectionSignaling(206),
  callbackFakeIpResult(207),
  ;

  final int value;

  const ESteamNetworkingConfigValue(this.value);

  factory ESteamNetworkingConfigValue.fromValue(int value) {
    switch (value) {
      case 0:
        return ESteamNetworkingConfigValue.invalid;
      case 2:
        return ESteamNetworkingConfigValue.fakePacketLossSend;
      case 3:
        return ESteamNetworkingConfigValue.fakePacketLossRecv;
      case 4:
        return ESteamNetworkingConfigValue.fakePacketLagSend;
      case 5:
        return ESteamNetworkingConfigValue.fakePacketLagRecv;
      case 6:
        return ESteamNetworkingConfigValue.fakePacketReorderSend;
      case 7:
        return ESteamNetworkingConfigValue.fakePacketReorderRecv;
      case 8:
        return ESteamNetworkingConfigValue.fakePacketReorderTime;
      case 9:
        return ESteamNetworkingConfigValue.sendBufferSize;
      case 10:
        return ESteamNetworkingConfigValue.sendRateMin;
      case 11:
        return ESteamNetworkingConfigValue.sendRateMax;
      case 12:
        return ESteamNetworkingConfigValue.nagleTime;
      case 13:
        return ESteamNetworkingConfigValue.logLevelAckRTT;
      case 14:
        return ESteamNetworkingConfigValue.logLevelPacketDecode;
      case 15:
        return ESteamNetworkingConfigValue.logLevelMessage;
      case 16:
        return ESteamNetworkingConfigValue.logLevelPacketGaps;
      case 17:
        return ESteamNetworkingConfigValue.logLevelP2pRendezvous;
      case 18:
        return ESteamNetworkingConfigValue.logLevelSdrRelayPings;
      case 19:
        return ESteamNetworkingConfigValue
            .sdrClientConsecutitivePingTimeoutsFailInitial;
      case 20:
        return ESteamNetworkingConfigValue
            .sdrClientConsecutitivePingTimeoutsFail;
      case 21:
        return ESteamNetworkingConfigValue.sdrClientMinPingsBeforePingAccurate;
      case 22:
        return ESteamNetworkingConfigValue.sdrClientSingleSocket;
      case 23:
        return ESteamNetworkingConfigValue.ipAllowWithoutAuth;
      case 24:
        return ESteamNetworkingConfigValue.timeoutInitial;
      case 25:
        return ESteamNetworkingConfigValue.timeoutConnected;
      case 26:
        return ESteamNetworkingConfigValue.fakePacketDupSend;
      case 27:
        return ESteamNetworkingConfigValue.fakePacketDupRecv;
      case 28:
        return ESteamNetworkingConfigValue.fakePacketDupTimeMax;
      case 29:
        return ESteamNetworkingConfigValue.sdrClientForceRelayCluster;
      case 30:
        return ESteamNetworkingConfigValue.sdrClientDebugTicketAddress;
      case 31:
        return ESteamNetworkingConfigValue.sdrClientForceProxyAddr;
      case 32:
        return ESteamNetworkingConfigValue.mTUPacketSize;
      case 33:
        return ESteamNetworkingConfigValue.mTUDataSize;
      case 34:
        return ESteamNetworkingConfigValue.unencrypted;
      case 35:
        return ESteamNetworkingConfigValue.deletedEnumerateDevVars;
      case 36:
        return ESteamNetworkingConfigValue.sdrClientFakeClusterPing;
      case 37:
        return ESteamNetworkingConfigValue.symmetricConnect;
      case 38:
        return ESteamNetworkingConfigValue.localVirtualPort;
      case 39:
        return ESteamNetworkingConfigValue.dualWifiEnable;
      case 40:
        return ESteamNetworkingConfigValue.connectionUserData;
      case 41:
        return ESteamNetworkingConfigValue.packetTraceMaxBytes;
      case 42:
        return ESteamNetworkingConfigValue.fakeRateLimitSendRate;
      case 43:
        return ESteamNetworkingConfigValue.fakeRateLimitSendBurst;
      case 44:
        return ESteamNetworkingConfigValue.fakeRateLimitRecvRate;
      case 45:
        return ESteamNetworkingConfigValue.fakeRateLimitRecvBurst;
      case 46:
        return ESteamNetworkingConfigValue.enableDiagnosticsUI;
      case 103:
        return ESteamNetworkingConfigValue.p2pSTUNServerList;
      case 104:
        return ESteamNetworkingConfigValue.p2pTransportIceEnable;
      case 105:
        return ESteamNetworkingConfigValue.p2pTransportIcePenalty;
      case 106:
        return ESteamNetworkingConfigValue.p2pTransportSdrPenalty;
      case 107:
        return ESteamNetworkingConfigValue.p2pTURNServerList;
      case 108:
        return ESteamNetworkingConfigValue.p2pTURNUserList;
      case 109:
        return ESteamNetworkingConfigValue.p2pTURNPassList;
      case 110:
        return ESteamNetworkingConfigValue.p2pTransportIceImplementation;
      case 201:
        return ESteamNetworkingConfigValue.callbackConnectionStatusChanged;
      case 202:
        return ESteamNetworkingConfigValue.callbackAuthStatusChanged;
      case 203:
        return ESteamNetworkingConfigValue.callbackRelayNetworkStatusChanged;
      case 204:
        return ESteamNetworkingConfigValue.callbackMessagesSessionRequest;
      case 205:
        return ESteamNetworkingConfigValue.callbackMessagesSessionFailed;
      case 206:
        return ESteamNetworkingConfigValue.callbackCreateConnectionSignaling;
      case 207:
        return ESteamNetworkingConfigValue.callbackFakeIpResult;
      default:
        throw "Unknown value for 'ESteamNetworkingConfigValue'. The value was: '$value'";
    }
  }
}
