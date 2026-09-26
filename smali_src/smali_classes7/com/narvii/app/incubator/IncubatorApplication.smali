.class public Lcom/narvii/app/incubator/IncubatorApplication;
.super Lcom/narvii/pushservice/PushApplication;
.source "SourceFile"


# static fields
.field private static final MEDIA_LAB_COHORT:Ljava/lang/String; = "interstitial_skip"

.field public static final PREFS_SERVICE_KEY:Ljava/lang/String; = "prefs"

.field public static STARTUP_TIME:J


# instance fields
.field private accountServiceProvider:Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;

.field private activeCid:I

.field private activeCount:I

.field private appSessionHelper:Lcom/narvii/app/ApplicationSessionHelper;

.field private cacheDirProvider:Lcom/narvii/services/incubator/IncubatorCacheDirServiceProvider;

.field private final callScreenService:Lcom/narvii/chat/call/CallScreenService;

.field private cbbHostActivityProvider:Lcom/narvii/services/incubator/IncubatorCBBHostActivityProvider;

.field private cbbHostCommunityProvider:Lcom/narvii/services/incubator/IncubatorCBBHostCommunityProvider;

.field private chatServiceProvider:Lcom/narvii/services/ChatServiceProvider;

.field private checkInActivityServiceProvider:Lcom/narvii/checkin/CheckInActivityServiceProvider;

.field private checkInServiceProvider:Lcom/narvii/checkin/CheckInServiceProvider;

.field private cohort:Ljava/lang/String;

.field private communityActiveHelper:Lcom/narvii/community/CommunityActiveHelper;

.field private final communityBlockServiceProvider:Lcom/narvii/services/incubator/IncubatorBlockServiceProvider;

.field private final communityContextCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/narvii/services/incubator/CommunityContext;",
            ">;>;"
        }
    .end annotation
.end field

.field private final communityContextMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/narvii/services/incubator/CommunityContext;",
            ">;"
        }
    .end annotation
.end field

.field private final communityLoggingServiceProvider:Lcom/narvii/services/incubator/IncubatorCommunityLoggingServiceProvider;

.field private communityStatusHelper:Lcom/narvii/services/CommunityStatusHelper;

.field private configProvider:Lcom/narvii/services/incubator/IncubatorConfigProvider;

.field private final debugServiceProvider:Lcom/narvii/util/debug/DebugServiceProvider;

.field private draftManagerProvider:Lcom/narvii/services/incubator/IncubatorDraftManagerProvider;

.field private drawerActivityProvider:Lcom/narvii/services/incubator/IncubatorDrawerHostActivityProvider;

.field private drawerCommunityProvider:Lcom/narvii/services/incubator/IncubatorDrawerHostCommunityProvider;

.field private drawerRightProvider:Lcom/narvii/services/DrawerRightHostProvider;

.field private enterCommunityHelper:Lcom/narvii/services/EnterCommunityHelper;

.field private filesDirProvider:Lcom/narvii/services/incubator/IncubatorFilesDirServiceProvider;

.field private final globalBlockServiceProvider:Lcom/narvii/services/incubator/IncubatorGlobalBlockServiceProvider;

.field private handler:Landroid/os/Handler;

.field private final incubatorLiveLayerCommunityServiceProvider:Lcom/narvii/services/IncubatorLiveLayerCommunityServiceProvider;

.field private final keyStoreProvider:Lcom/narvii/services/KeyStoreServiceProvider;

.field private liveLayerActivityProvider:Lcom/narvii/services/incubator/IncubatorLiveLayerHostActivityProvider;

.field private liveLayerCommunityProvider:Lcom/narvii/services/incubator/IncubatorLiveLayerHostCommunityProvider;

.field private final lives:Landroid/util/SparseIntArray;

.field private final localeChangeListener:Lcom/narvii/services/LocaleChangeListener;

.field private final loggingServiceProvider:Lcom/narvii/services/incubator/IncubatorLoggingServiceProvider;

.field private final membershipServiceProvider:Lcom/narvii/services/MembershipServiceProvider;

.field private final messageReadServiceProvider:Lcom/narvii/services/MessageReadServiceProvider;

.field private myCommunityListReminderHelper:Lcom/narvii/services/MyCommunityListReminderHelper;

.field private navigatorProvider:Lcom/narvii/services/incubator/IncubatorNavigatorProvider;

.field private notificationCenterProvider:Lcom/narvii/services/incubator/IncubatorNotificationCenterProvider;

.field private pasteBoardServiceProvider:Lcom/narvii/services/incubator/PasteBoardServiceProvider;

.field private pollServiceProvider:Lcom/narvii/services/PollServiceProvider;

.field private pushInviteHelper:Lcom/narvii/services/PushInviteHelper;

.field private rankingServiceProvider:Lcom/narvii/services/RankingServiceProvider;

.field private final recentCommunityHelper:Lcom/narvii/community/RecentCommunityHelper;

.field private final rtcServiceProvider:Lcom/narvii/services/RtcServiceProvider;

.field private final signallingMonitorHelper:Lcom/narvii/util/debug/SignallingMonitorHelper;

.field private statisticsServiceProvider:Lcom/narvii/services/incubator/IncubatorStatisticsServiceProvider;

.field private statsProvider:Lcom/narvii/services/incubator/IncubatorStatsProvider;

.field private final stickerCacheServiceProvider:Lcom/narvii/services/StickerCacheServiceProvider;

.field private final stickerServiceProvider:Lcom/narvii/services/StickerServiceProvider;

.field private final topActivityServiceProvider:Lcom/narvii/util/services/TopActivityServiceProvider;

.field private updateDeviceTokenHelper:Lcom/narvii/pushservice/UpdateDeviceTokenHelper;

.field private visitorBarHostActivityProvider:Lcom/narvii/services/incubator/IncubatorVisitorBarHostActivityProvider;

.field private visitorBarHostCommunityProvider:Lcom/narvii/services/incubator/IncubatorVisitorBarHostCommunityProvider;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    .line 2
    const/16 v0, 0x64

    .line 3
    .line 4
    const-string v1, ".altamino.top"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v2, v0, v1}, Lcom/narvii/pushservice/PushApplication;-><init>(ZILjava/lang/String;)V

    .line 9
    .line 10
    new-instance v0, Lcom/narvii/services/incubator/IncubatorCacheDirServiceProvider;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0}, Lcom/narvii/services/incubator/IncubatorCacheDirServiceProvider;-><init>()V

    .line 14
    .line 15
    iput-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->cacheDirProvider:Lcom/narvii/services/incubator/IncubatorCacheDirServiceProvider;

    .line 16
    .line 17
    new-instance v0, Lcom/narvii/services/incubator/IncubatorFilesDirServiceProvider;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0}, Lcom/narvii/services/incubator/IncubatorFilesDirServiceProvider;-><init>()V

    .line 21
    .line 22
    iput-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->filesDirProvider:Lcom/narvii/services/incubator/IncubatorFilesDirServiceProvider;

    .line 23
    .line 24
    new-instance v0, Lcom/narvii/services/incubator/IncubatorConfigProvider;

    .line 25
    .line 26
    .line 27
    invoke-direct {v0}, Lcom/narvii/services/incubator/IncubatorConfigProvider;-><init>()V

    .line 28
    .line 29
    iput-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->configProvider:Lcom/narvii/services/incubator/IncubatorConfigProvider;

    .line 30
    .line 31
    new-instance v0, Lcom/narvii/services/incubator/IncubatorNavigatorProvider;

    .line 32
    .line 33
    .line 34
    invoke-direct {v0}, Lcom/narvii/services/incubator/IncubatorNavigatorProvider;-><init>()V

    .line 35
    .line 36
    iput-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->navigatorProvider:Lcom/narvii/services/incubator/IncubatorNavigatorProvider;

    .line 37
    .line 38
    new-instance v0, Lcom/narvii/services/incubator/IncubatorDrawerHostCommunityProvider;

    .line 39
    .line 40
    .line 41
    invoke-direct {v0}, Lcom/narvii/services/incubator/IncubatorDrawerHostCommunityProvider;-><init>()V

    .line 42
    .line 43
    iput-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->drawerCommunityProvider:Lcom/narvii/services/incubator/IncubatorDrawerHostCommunityProvider;

    .line 44
    .line 45
    new-instance v1, Lcom/narvii/services/incubator/IncubatorDrawerHostActivityProvider;

    .line 46
    .line 47
    .line 48
    invoke-direct {v1, v0}, Lcom/narvii/services/incubator/IncubatorDrawerHostActivityProvider;-><init>(Lcom/narvii/services/incubator/IncubatorDrawerHostCommunityProvider;)V

    .line 49
    .line 50
    iput-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->drawerActivityProvider:Lcom/narvii/services/incubator/IncubatorDrawerHostActivityProvider;

    .line 51
    .line 52
    new-instance v0, Lcom/narvii/services/DrawerRightHostProvider;

    .line 53
    .line 54
    .line 55
    invoke-direct {v0}, Lcom/narvii/services/DrawerRightHostProvider;-><init>()V

    .line 56
    .line 57
    iput-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->drawerRightProvider:Lcom/narvii/services/DrawerRightHostProvider;

    .line 58
    .line 59
    new-instance v0, Lcom/narvii/services/ChatServiceProvider;

    .line 60
    .line 61
    .line 62
    invoke-direct {v0}, Lcom/narvii/services/ChatServiceProvider;-><init>()V

    .line 63
    .line 64
    iput-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->chatServiceProvider:Lcom/narvii/services/ChatServiceProvider;

    .line 65
    .line 66
    new-instance v0, Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;

    .line 67
    .line 68
    .line 69
    invoke-direct {v0}, Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;-><init>()V

    .line 70
    .line 71
    iput-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->accountServiceProvider:Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;

    .line 72
    .line 73
    new-instance v0, Lcom/narvii/services/incubator/IncubatorNotificationCenterProvider;

    .line 74
    .line 75
    .line 76
    invoke-direct {v0}, Lcom/narvii/services/incubator/IncubatorNotificationCenterProvider;-><init>()V

    .line 77
    .line 78
    iput-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->notificationCenterProvider:Lcom/narvii/services/incubator/IncubatorNotificationCenterProvider;

    .line 79
    .line 80
    new-instance v0, Lcom/narvii/services/incubator/IncubatorDraftManagerProvider;

    .line 81
    .line 82
    .line 83
    invoke-direct {v0}, Lcom/narvii/services/incubator/IncubatorDraftManagerProvider;-><init>()V

    .line 84
    .line 85
    iput-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->draftManagerProvider:Lcom/narvii/services/incubator/IncubatorDraftManagerProvider;

    .line 86
    .line 87
    new-instance v0, Lcom/narvii/services/incubator/IncubatorStatisticsServiceProvider;

    .line 88
    .line 89
    .line 90
    invoke-direct {v0}, Lcom/narvii/services/incubator/IncubatorStatisticsServiceProvider;-><init>()V

    .line 91
    .line 92
    iput-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->statisticsServiceProvider:Lcom/narvii/services/incubator/IncubatorStatisticsServiceProvider;

    .line 93
    .line 94
    new-instance v0, Lcom/narvii/services/incubator/IncubatorStatsProvider;

    .line 95
    .line 96
    .line 97
    invoke-direct {v0}, Lcom/narvii/services/incubator/IncubatorStatsProvider;-><init>()V

    .line 98
    .line 99
    iput-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->statsProvider:Lcom/narvii/services/incubator/IncubatorStatsProvider;

    .line 100
    .line 101
    new-instance v0, Lcom/narvii/services/RankingServiceProvider;

    .line 102
    .line 103
    .line 104
    invoke-direct {v0}, Lcom/narvii/services/RankingServiceProvider;-><init>()V

    .line 105
    .line 106
    iput-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->rankingServiceProvider:Lcom/narvii/services/RankingServiceProvider;

    .line 107
    .line 108
    new-instance v0, Lcom/narvii/services/MyCommunityListReminderHelper;

    .line 109
    .line 110
    .line 111
    invoke-direct {v0}, Lcom/narvii/services/MyCommunityListReminderHelper;-><init>()V

    .line 112
    .line 113
    iput-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->myCommunityListReminderHelper:Lcom/narvii/services/MyCommunityListReminderHelper;

    .line 114
    .line 115
    new-instance v0, Lcom/narvii/services/PollServiceProvider;

    .line 116
    .line 117
    .line 118
    invoke-direct {v0}, Lcom/narvii/services/PollServiceProvider;-><init>()V

    .line 119
    .line 120
    iput-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->pollServiceProvider:Lcom/narvii/services/PollServiceProvider;

    .line 121
    .line 122
    new-instance v0, Lcom/narvii/app/ApplicationSessionHelper;

    .line 123
    .line 124
    .line 125
    invoke-direct {v0}, Lcom/narvii/app/ApplicationSessionHelper;-><init>()V

    .line 126
    .line 127
    iput-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->appSessionHelper:Lcom/narvii/app/ApplicationSessionHelper;

    .line 128
    .line 129
    new-instance v0, Lcom/narvii/services/incubator/PasteBoardServiceProvider;

    .line 130
    .line 131
    .line 132
    invoke-direct {v0}, Lcom/narvii/services/incubator/PasteBoardServiceProvider;-><init>()V

    .line 133
    .line 134
    iput-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->pasteBoardServiceProvider:Lcom/narvii/services/incubator/PasteBoardServiceProvider;

    .line 135
    .line 136
    new-instance v0, Lcom/narvii/pushservice/UpdateDeviceTokenHelper;

    .line 137
    .line 138
    .line 139
    invoke-direct {v0}, Lcom/narvii/pushservice/UpdateDeviceTokenHelper;-><init>()V

    .line 140
    .line 141
    iput-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->updateDeviceTokenHelper:Lcom/narvii/pushservice/UpdateDeviceTokenHelper;

    .line 142
    .line 143
    new-instance v0, Lcom/narvii/services/EnterCommunityHelper;

    .line 144
    .line 145
    .line 146
    invoke-direct {v0}, Lcom/narvii/services/EnterCommunityHelper;-><init>()V

    .line 147
    .line 148
    iput-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->enterCommunityHelper:Lcom/narvii/services/EnterCommunityHelper;

    .line 149
    .line 150
    new-instance v0, Lcom/narvii/services/CommunityStatusHelper;

    .line 151
    .line 152
    .line 153
    invoke-direct {v0}, Lcom/narvii/services/CommunityStatusHelper;-><init>()V

    .line 154
    .line 155
    iput-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->communityStatusHelper:Lcom/narvii/services/CommunityStatusHelper;

    .line 156
    .line 157
    new-instance v0, Lcom/narvii/community/CommunityActiveHelper;

    .line 158
    .line 159
    .line 160
    invoke-direct {v0}, Lcom/narvii/community/CommunityActiveHelper;-><init>()V

    .line 161
    .line 162
    iput-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->communityActiveHelper:Lcom/narvii/community/CommunityActiveHelper;

    .line 163
    .line 164
    new-instance v0, Lcom/narvii/services/PushInviteHelper;

    .line 165
    .line 166
    .line 167
    invoke-direct {v0}, Lcom/narvii/services/PushInviteHelper;-><init>()V

    .line 168
    .line 169
    iput-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->pushInviteHelper:Lcom/narvii/services/PushInviteHelper;

    .line 170
    .line 171
    new-instance v0, Lcom/narvii/services/AminoDebugServiceProvider;

    .line 172
    .line 173
    .line 174
    invoke-direct {v0}, Lcom/narvii/services/AminoDebugServiceProvider;-><init>()V

    .line 175
    .line 176
    iput-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->debugServiceProvider:Lcom/narvii/util/debug/DebugServiceProvider;

    .line 177
    .line 178
    new-instance v0, Lcom/narvii/util/debug/SignallingMonitorHelper;

    .line 179
    .line 180
    .line 181
    invoke-direct {v0}, Lcom/narvii/util/debug/SignallingMonitorHelper;-><init>()V

    .line 182
    .line 183
    iput-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->signallingMonitorHelper:Lcom/narvii/util/debug/SignallingMonitorHelper;

    .line 184
    .line 185
    new-instance v0, Lcom/narvii/services/RtcServiceProvider;

    .line 186
    .line 187
    .line 188
    invoke-direct {v0}, Lcom/narvii/services/RtcServiceProvider;-><init>()V

    .line 189
    .line 190
    iput-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->rtcServiceProvider:Lcom/narvii/services/RtcServiceProvider;

    .line 191
    .line 192
    new-instance v0, Lcom/narvii/checkin/CheckInServiceProvider;

    .line 193
    .line 194
    .line 195
    invoke-direct {v0}, Lcom/narvii/checkin/CheckInServiceProvider;-><init>()V

    .line 196
    .line 197
    iput-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->checkInServiceProvider:Lcom/narvii/checkin/CheckInServiceProvider;

    .line 198
    .line 199
    new-instance v1, Lcom/narvii/checkin/CheckInActivityServiceProvider;

    .line 200
    .line 201
    .line 202
    invoke-direct {v1, v0}, Lcom/narvii/checkin/CheckInActivityServiceProvider;-><init>(Lcom/narvii/checkin/CheckInServiceProvider;)V

    .line 203
    .line 204
    iput-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->checkInActivityServiceProvider:Lcom/narvii/checkin/CheckInActivityServiceProvider;

    .line 205
    .line 206
    new-instance v0, Lcom/narvii/services/IncubatorLiveLayerCommunityServiceProvider;

    .line 207
    .line 208
    .line 209
    invoke-direct {v0}, Lcom/narvii/services/IncubatorLiveLayerCommunityServiceProvider;-><init>()V

    .line 210
    .line 211
    iput-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->incubatorLiveLayerCommunityServiceProvider:Lcom/narvii/services/IncubatorLiveLayerCommunityServiceProvider;

    .line 212
    .line 213
    new-instance v0, Lcom/narvii/services/MessageReadServiceProvider;

    .line 214
    .line 215
    .line 216
    invoke-direct {v0}, Lcom/narvii/services/MessageReadServiceProvider;-><init>()V

    .line 217
    .line 218
    iput-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->messageReadServiceProvider:Lcom/narvii/services/MessageReadServiceProvider;

    .line 219
    .line 220
    new-instance v0, Lcom/narvii/services/incubator/IncubatorLiveLayerHostCommunityProvider;

    .line 221
    .line 222
    .line 223
    invoke-direct {v0}, Lcom/narvii/services/incubator/IncubatorLiveLayerHostCommunityProvider;-><init>()V

    .line 224
    .line 225
    iput-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->liveLayerCommunityProvider:Lcom/narvii/services/incubator/IncubatorLiveLayerHostCommunityProvider;

    .line 226
    .line 227
    new-instance v1, Lcom/narvii/services/incubator/IncubatorLiveLayerHostActivityProvider;

    .line 228
    .line 229
    .line 230
    invoke-direct {v1, v0}, Lcom/narvii/services/incubator/IncubatorLiveLayerHostActivityProvider;-><init>(Lcom/narvii/services/incubator/IncubatorLiveLayerHostCommunityProvider;)V

    .line 231
    .line 232
    iput-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->liveLayerActivityProvider:Lcom/narvii/services/incubator/IncubatorLiveLayerHostActivityProvider;

    .line 233
    .line 234
    new-instance v0, Lcom/narvii/services/incubator/IncubatorCBBHostCommunityProvider;

    .line 235
    .line 236
    .line 237
    invoke-direct {v0}, Lcom/narvii/services/incubator/IncubatorCBBHostCommunityProvider;-><init>()V

    .line 238
    .line 239
    iput-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->cbbHostCommunityProvider:Lcom/narvii/services/incubator/IncubatorCBBHostCommunityProvider;

    .line 240
    .line 241
    new-instance v1, Lcom/narvii/services/incubator/IncubatorCBBHostActivityProvider;

    .line 242
    .line 243
    .line 244
    invoke-direct {v1, v0}, Lcom/narvii/services/incubator/IncubatorCBBHostActivityProvider;-><init>(Lcom/narvii/services/incubator/IncubatorCBBHostCommunityProvider;)V

    .line 245
    .line 246
    iput-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->cbbHostActivityProvider:Lcom/narvii/services/incubator/IncubatorCBBHostActivityProvider;

    .line 247
    .line 248
    new-instance v0, Lcom/narvii/services/incubator/IncubatorVisitorBarHostCommunityProvider;

    .line 249
    .line 250
    .line 251
    invoke-direct {v0}, Lcom/narvii/services/incubator/IncubatorVisitorBarHostCommunityProvider;-><init>()V

    .line 252
    .line 253
    iput-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->visitorBarHostCommunityProvider:Lcom/narvii/services/incubator/IncubatorVisitorBarHostCommunityProvider;

    .line 254
    .line 255
    new-instance v1, Lcom/narvii/services/incubator/IncubatorVisitorBarHostActivityProvider;

    .line 256
    .line 257
    .line 258
    invoke-direct {v1, v0}, Lcom/narvii/services/incubator/IncubatorVisitorBarHostActivityProvider;-><init>(Lcom/narvii/services/incubator/IncubatorVisitorBarHostCommunityProvider;)V

    .line 259
    .line 260
    iput-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->visitorBarHostActivityProvider:Lcom/narvii/services/incubator/IncubatorVisitorBarHostActivityProvider;

    .line 261
    .line 262
    new-instance v0, Lcom/narvii/chat/call/CallScreenService;

    .line 263
    .line 264
    .line 265
    invoke-direct {v0}, Lcom/narvii/chat/call/CallScreenService;-><init>()V

    .line 266
    .line 267
    iput-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 268
    .line 269
    new-instance v0, Lcom/narvii/services/incubator/IncubatorGlobalBlockServiceProvider;

    .line 270
    .line 271
    .line 272
    invoke-direct {v0}, Lcom/narvii/services/incubator/IncubatorGlobalBlockServiceProvider;-><init>()V

    .line 273
    .line 274
    iput-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->globalBlockServiceProvider:Lcom/narvii/services/incubator/IncubatorGlobalBlockServiceProvider;

    .line 275
    .line 276
    new-instance v0, Lcom/narvii/services/incubator/IncubatorBlockServiceProvider;

    .line 277
    .line 278
    .line 279
    invoke-direct {v0}, Lcom/narvii/services/incubator/IncubatorBlockServiceProvider;-><init>()V

    .line 280
    .line 281
    iput-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->communityBlockServiceProvider:Lcom/narvii/services/incubator/IncubatorBlockServiceProvider;

    .line 282
    .line 283
    new-instance v0, Lcom/narvii/community/RecentCommunityHelper;

    .line 284
    .line 285
    .line 286
    invoke-direct {v0}, Lcom/narvii/community/RecentCommunityHelper;-><init>()V

    .line 287
    .line 288
    iput-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->recentCommunityHelper:Lcom/narvii/community/RecentCommunityHelper;

    .line 289
    .line 290
    new-instance v0, Lcom/narvii/services/incubator/IncubatorLoggingServiceProvider;

    .line 291
    .line 292
    .line 293
    invoke-direct {v0}, Lcom/narvii/services/incubator/IncubatorLoggingServiceProvider;-><init>()V

    .line 294
    .line 295
    iput-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->loggingServiceProvider:Lcom/narvii/services/incubator/IncubatorLoggingServiceProvider;

    .line 296
    .line 297
    new-instance v0, Lcom/narvii/services/incubator/IncubatorCommunityLoggingServiceProvider;

    .line 298
    .line 299
    .line 300
    invoke-direct {v0}, Lcom/narvii/services/incubator/IncubatorCommunityLoggingServiceProvider;-><init>()V

    .line 301
    .line 302
    iput-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->communityLoggingServiceProvider:Lcom/narvii/services/incubator/IncubatorCommunityLoggingServiceProvider;

    .line 303
    .line 304
    new-instance v0, Lcom/narvii/services/MembershipServiceProvider;

    .line 305
    .line 306
    .line 307
    invoke-direct {v0}, Lcom/narvii/services/MembershipServiceProvider;-><init>()V

    .line 308
    .line 309
    iput-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->membershipServiceProvider:Lcom/narvii/services/MembershipServiceProvider;

    .line 310
    .line 311
    new-instance v0, Lcom/narvii/services/StickerServiceProvider;

    .line 312
    .line 313
    .line 314
    invoke-direct {v0}, Lcom/narvii/services/StickerServiceProvider;-><init>()V

    .line 315
    .line 316
    iput-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->stickerServiceProvider:Lcom/narvii/services/StickerServiceProvider;

    .line 317
    .line 318
    new-instance v0, Lcom/narvii/services/StickerCacheServiceProvider;

    .line 319
    .line 320
    .line 321
    invoke-direct {v0}, Lcom/narvii/services/StickerCacheServiceProvider;-><init>()V

    .line 322
    .line 323
    iput-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->stickerCacheServiceProvider:Lcom/narvii/services/StickerCacheServiceProvider;

    .line 324
    .line 325
    new-instance v0, Lcom/narvii/util/services/TopActivityServiceProvider;

    .line 326
    .line 327
    .line 328
    invoke-direct {v0}, Lcom/narvii/util/services/TopActivityServiceProvider;-><init>()V

    .line 329
    .line 330
    iput-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->topActivityServiceProvider:Lcom/narvii/util/services/TopActivityServiceProvider;

    .line 331
    .line 332
    new-instance v0, Lcom/narvii/services/LocaleChangeListener;

    .line 333
    .line 334
    .line 335
    invoke-direct {v0}, Lcom/narvii/services/LocaleChangeListener;-><init>()V

    .line 336
    .line 337
    iput-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->localeChangeListener:Lcom/narvii/services/LocaleChangeListener;

    .line 338
    .line 339
    new-instance v0, Lcom/narvii/services/KeyStoreServiceProvider;

    .line 340
    .line 341
    .line 342
    invoke-direct {v0}, Lcom/narvii/services/KeyStoreServiceProvider;-><init>()V

    .line 343
    .line 344
    iput-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->keyStoreProvider:Lcom/narvii/services/KeyStoreServiceProvider;

    .line 345
    .line 346
    new-instance v0, Ljava/util/HashMap;

    .line 347
    .line 348
    .line 349
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 350
    .line 351
    iput-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->communityContextMap:Ljava/util/HashMap;

    .line 352
    .line 353
    new-instance v0, Ljava/util/HashMap;

    .line 354
    .line 355
    .line 356
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 357
    .line 358
    iput-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->communityContextCache:Ljava/util/HashMap;

    .line 359
    .line 360
    iput v2, p0, Lcom/narvii/app/incubator/IncubatorApplication;->activeCid:I

    .line 361
    .line 362
    iput v2, p0, Lcom/narvii/app/incubator/IncubatorApplication;->activeCount:I

    .line 363
    .line 364
    new-instance v0, Landroid/util/SparseIntArray;

    .line 365
    .line 366
    .line 367
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 368
    .line 369
    iput-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->lives:Landroid/util/SparseIntArray;

    .line 370
    .line 371
    new-instance v0, Lcom/narvii/app/incubator/IncubatorApplication$3;

    .line 372
    .line 373
    .line 374
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 375
    move-result-object v1

    .line 376
    .line 377
    .line 378
    invoke-direct {v0, p0, v1}, Lcom/narvii/app/incubator/IncubatorApplication$3;-><init>(Lcom/narvii/app/incubator/IncubatorApplication;Landroid/os/Looper;)V

    .line 379
    .line 380
    iput-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->handler:Landroid/os/Handler;

    .line 381
    .line 382
    .line 383
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 384
    move-result-wide v0

    .line 385
    .line 386
    sput-wide v0, Lcom/narvii/app/incubator/IncubatorApplication;->STARTUP_TIME:J

    .line 387
    const/4 v0, 0x1

    .line 388
    .line 389
    sput-boolean v0, Lcom/narvii/app/ApplicationSessionHelper;->RESET_ENABLED:Z

    .line 390
    return-void
.end method

.method private clearBillingClient(Landroid/app/Activity;)V
    .locals 0

    .line 1
    .line 2
    instance-of p1, p1, Lcom/narvii/master/MasterActivity;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    sget-object p1, Lcom/narvii/wallet/BillingManager;->INSTANCE:Lcom/narvii/wallet/BillingManager;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/narvii/wallet/BillingManager;->clear()V

    .line 10
    :cond_0
    return-void
.end method

.method private createCommunityContext(I)Lcom/narvii/services/incubator/CommunityContext;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->communityContextMap:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/services/incubator/CommunityContext;

    .line 13
    .line 14
    if-nez v0, :cond_2

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->communityContextCache:Ljava/util/HashMap;

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 27
    .line 28
    if-nez v0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 30
    goto :goto_0

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    check-cast v0, Lcom/narvii/services/incubator/CommunityContext;

    .line 37
    .line 38
    :goto_0
    if-nez v0, :cond_1

    .line 39
    .line 40
    new-instance v0, Lcom/narvii/services/incubator/CommunityContext;

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, p0, p1}, Lcom/narvii/services/incubator/CommunityContext;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 44
    .line 45
    iget-object v1, v0, Lcom/narvii/services/incubator/CommunityContext;->serviceManager:Lcom/narvii/services/ServiceManager;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/incubator/IncubatorApplication;->initCommunityServices(Lcom/narvii/services/incubator/CommunityContext;Lcom/narvii/services/ServiceManager;)V

    .line 49
    goto :goto_1

    .line 50
    .line 51
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    const-string v2, "x"

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v2, " reuse community context from weak cache"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object v1

    .line 72
    .line 73
    .line 74
    invoke-static {v1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    .line 75
    .line 76
    :goto_1
    iget-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->communityContextMap:Ljava/util/HashMap;

    .line 77
    .line 78
    .line 79
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    move-result-object v2

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    iget-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->communityContextCache:Ljava/util/HashMap;

    .line 86
    .line 87
    .line 88
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    move-result-object p1

    .line 90
    .line 91
    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 92
    .line 93
    .line 94
    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_2
    return-object v0
.end method

.method public static getCommunityId(Ljava/lang/Object;)I
    .locals 2

    .line 1
    .line 2
    instance-of v0, p0, Lcom/narvii/app/NVActivity;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    check-cast p0, Lcom/narvii/app/NVActivity;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->_communityId()I

    .line 11
    move-result p0

    .line 12
    .line 13
    if-lez p0, :cond_0

    .line 14
    move v1, p0

    .line 15
    :cond_0
    return v1

    .line 16
    .line 17
    :cond_1
    instance-of v0, p0, Lcom/narvii/services/incubator/CommunityContext;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    check-cast p0, Lcom/narvii/services/incubator/CommunityContext;

    .line 22
    .line 23
    iget p0, p0, Lcom/narvii/services/incubator/CommunityContext;->cid:I

    .line 24
    return p0

    .line 25
    :cond_2
    return v1
.end method

.method public static synthetic i(Lcom/narvii/app/incubator/IncubatorApplication;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/app/incubator/IncubatorApplication;->lambda$initMediaLabAds$0(Ljava/lang/String;)V

    return-void
.end method

.method private initCrashlytics()V
    .locals 2

    .line 1
    .line 2
    const-string v0, "account"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/google/firebase/crashlytics/g;->a()Lcom/google/firebase/crashlytics/g;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    const-string v0, ""

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/firebase/crashlytics/g;->d(Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method private initMediaLabAds()V
    .locals 7

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "cohort = "

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->cohort:Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lcom/narvii/util/Log;->v(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lai/medialab/medialabads2/MediaLabAds;->getInstance()Lai/medialab/medialabads2/MediaLabAds;

    .line 26
    move-result-object v1

    .line 27
    const/4 v3, 0x1

    .line 28
    .line 29
    iget-object v4, p0, Lcom/narvii/app/incubator/IncubatorApplication;->cohort:Ljava/lang/String;

    .line 30
    .line 31
    new-instance v5, Lcom/narvii/app/incubator/IncubatorApplication$1;

    .line 32
    .line 33
    .line 34
    invoke-direct {v5, p0}, Lcom/narvii/app/incubator/IncubatorApplication$1;-><init>(Lcom/narvii/app/incubator/IncubatorApplication;)V

    .line 35
    .line 36
    new-instance v6, Lcom/narvii/app/incubator/a;

    .line 37
    .line 38
    .line 39
    invoke-direct {v6, p0}, Lcom/narvii/app/incubator/a;-><init>(Lcom/narvii/app/incubator/IncubatorApplication;)V

    .line 40
    move-object v2, p0

    .line 41
    .line 42
    .line 43
    invoke-virtual/range {v1 .. v6}, Lai/medialab/medialabads2/MediaLabAds;->initialize(Landroid/content/Context;ZLjava/lang/String;Lai/medialab/medialabads2/SdkInitListener;Lai/medialab/medialabads2/MediaLabUidListener;)V

    .line 44
    .line 45
    .line 46
    invoke-static {}, Lai/medialab/medialabads2/MediaLabAds;->getInstance()Lai/medialab/medialabads2/MediaLabAds;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    new-instance v1, Lcom/narvii/app/incubator/b;

    .line 50
    .line 51
    .line 52
    invoke-direct {v1, p0}, Lcom/narvii/app/incubator/b;-><init>(Lcom/narvii/app/incubator/IncubatorApplication;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lai/medialab/medialabads2/MediaLabAds;->addRevenueListener(Lai/medialab/medialabads2/analytics/AdRevenueListener;)V

    .line 56
    .line 57
    .line 58
    invoke-static {}, Lcom/narvii/wallet/optinads/OptinAds;->forceAds()Z

    .line 59
    return-void
.end method

.method private initRemoteConfig()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/firebase/remoteconfig/a;->k()Lcom/google/firebase/remoteconfig/a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/a;->e()Lcom/google/android/gms/tasks/Task;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/a;->f()Lcom/google/android/gms/tasks/Task;

    .line 11
    .line 12
    const-string v1, "interstitial_skip"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/google/firebase/remoteconfig/a;->o(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    iput-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->cohort:Ljava/lang/String;

    .line 19
    return-void
.end method

.method private initWebView()V
    .locals 3

    .line 1
    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x1c

    .line 5
    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/google/android/gms/common/util/a;->a()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    new-instance v1, Lcom/narvii/util/PackageUtils;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/app/NVApplication;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v2}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/narvii/util/PackageUtils;->getMasterPackageName()Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    move-result v1

    .line 30
    .line 31
    if-nez v1, :cond_0

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Landroidx/webkit/internal/l0;->a(Ljava/lang/String;)V

    .line 35
    :cond_0
    return-void
.end method

.method public static synthetic j(Lcom/narvii/app/incubator/IncubatorApplication;Lai/medialab/medialabads2/analytics/AdRevenueInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/app/incubator/IncubatorApplication;->lambda$initMediaLabAds$1(Lai/medialab/medialabads2/analytics/AdRevenueInfo;)V

    return-void
.end method

.method static bridge synthetic k(Lcom/narvii/app/incubator/IncubatorApplication;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->activeCid:I

    return p0
.end method

.method static bridge synthetic l(Lcom/narvii/app/incubator/IncubatorApplication;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->activeCount:I

    return p0
.end method

.method private synthetic lambda$initMediaLabAds$0(Ljava/lang/String;)V
    .locals 4

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    goto :goto_1

    .line 10
    .line 11
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 15
    .line 16
    :try_start_0
    const-string v1, "assembly_uid"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    .line 21
    new-instance v1, Lcom/narvii/util/mixpanel/MixpanelAnalytics;

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, p0}, Lcom/narvii/util/mixpanel/MixpanelAnalytics;-><init>(Landroid/content/Context;)V

    .line 25
    .line 26
    new-instance v2, Ljava/util/HashMap;

    .line 27
    .line 28
    .line 29
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 30
    .line 31
    const-string v3, "extra"

    .line 32
    .line 33
    .line 34
    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    const-string p1, "medialab_uid_ready"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, p1, v2}, Lcom/narvii/util/mixpanel/MixpanelAnalytics;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v0}, Lcom/narvii/util/mixpanel/MixpanelAnalytics;->registerSuperProperties(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception p1

    .line 45
    .line 46
    const-string v0, "Error creating json object for uid onUidReady ads"

    .line 47
    .line 48
    .line 49
    invoke-static {v0, p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    :goto_0
    return-void

    .line 51
    .line 52
    :cond_1
    :goto_1
    const-string p1, "MediaLabAds uid is empty"

    .line 53
    .line 54
    .line 55
    invoke-static {p1}, Lcom/narvii/util/Log;->v(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method private synthetic lambda$initMediaLabAds$1(Lai/medialab/medialabads2/analytics/AdRevenueInfo;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Landroid/os/Bundle;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lai/medialab/medialabads2/analytics/AdRevenueInfo;->getAdPlatform()Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    .line 15
    const-string v3, "ad_platform"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    const-string v2, "ad_source"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lai/medialab/medialabads2/analytics/AdRevenueInfo;->getAdSource()Ljava/lang/String;

    .line 24
    move-result-object v3

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    const-string v2, "ad_format"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lai/medialab/medialabads2/analytics/AdRevenueInfo;->getAdFormat()Ljava/lang/String;

    .line 33
    move-result-object v3

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    const-string v2, "ad_unit_name"

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lai/medialab/medialabads2/analytics/AdRevenueInfo;->getAdUnit()Ljava/lang/String;

    .line 42
    move-result-object v3

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    const-string v2, "currency"

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lai/medialab/medialabads2/analytics/AdRevenueInfo;->getCurrency()Ljava/lang/String;

    .line 51
    move-result-object v3

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Lai/medialab/medialabads2/analytics/AdRevenueInfo;->getValue()Ljava/lang/Double;

    .line 58
    move-result-object v2

    .line 59
    .line 60
    if-eqz v2, :cond_0

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Lai/medialab/medialabads2/analytics/AdRevenueInfo;->getValue()Ljava/lang/Double;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 68
    move-result-wide v2

    .line 69
    .line 70
    const-string p1, "value"

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, p1, v2, v3}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 74
    .line 75
    :cond_0
    const-string p1, "ad_impression"

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 79
    return-void
.end method

.method static bridge synthetic m(Lcom/narvii/app/incubator/IncubatorApplication;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->communityContextMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic n(Lcom/narvii/app/incubator/IncubatorApplication;)Landroid/util/SparseIntArray;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->lives:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method static bridge synthetic o(Lcom/narvii/app/incubator/IncubatorApplication;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->activeCid:I

    return-void
.end method

.method private onGlobalContextResume()V
    .locals 2

    .line 1
    .line 2
    const-string v0, "chat"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/chat/core/ChatService;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->chatServiceProvider:Lcom/narvii/services/ChatServiceProvider;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p0, v0}, Lcom/narvii/services/ChatServiceProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/chat/core/ChatService;)V

    .line 14
    return-void
.end method

.method static bridge synthetic p(Lcom/narvii/app/incubator/IncubatorApplication;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->activeCount:I

    return-void
.end method

.method public static safedk_IncubatorApplication_onCreate_14dfe8e67294b4337f6b0625199ca86d(Lcom/narvii/app/incubator/IncubatorApplication;)V
    .locals 0
    .param p0, "p0"    # Lcom/narvii/app/incubator/IncubatorApplication;

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, La0/b;->p(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lcom/narvii/pushservice/PushApplication;->onCreate()V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/app/incubator/IncubatorApplication;->initWebView()V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/narvii/app/incubator/IncubatorApplication;->initCrashlytics()V

    .line 13
    .line 14
    .line 15
    invoke-static {p0}, Lcom/narvii/wallet/optinads/OptinAds;->sendAdLevelUserProperty(Lcom/narvii/app/NVContext;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/narvii/app/incubator/IncubatorApplication;->initRemoteConfig()V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/narvii/app/incubator/IncubatorApplication;->setUserProperties()V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lcom/narvii/app/incubator/IncubatorApplication;->initMediaLabAds()V

    .line 25
    return-void
.end method

.method private setUserProperties()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "content_language"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    check-cast v1, Lcom/narvii/language/ContentLanguageService;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/narvii/language/ContentLanguageService;->getLanguageShowCode()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    const-string v2, "language"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    invoke-static {p0}, Lcom/narvii/util/StorageUtils;->hasRootAccess(Lcom/narvii/app/NVContext;)Z

    .line 29
    move-result v1

    .line 30
    .line 31
    const-string v2, "false"

    .line 32
    .line 33
    const-string v3, "true"

    .line 34
    .line 35
    if-eqz v1, :cond_0

    .line 36
    move-object v1, v3

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move-object v1, v2

    .line 39
    .line 40
    :goto_0
    const-string v4, "device_rooted"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v4, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    new-instance v0, Lcom/narvii/util/PackageUtils;

    .line 46
    .line 47
    .line 48
    invoke-direct {v0, p0}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 49
    .line 50
    .line 51
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/narvii/util/PackageUtils;->isGooglePlayInstalled()Z

    .line 56
    move-result v4

    .line 57
    .line 58
    if-eqz v4, :cond_1

    .line 59
    move-object v2, v3

    .line 60
    .line 61
    :cond_1
    const-string v3, "has_play_store"

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v3, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 68
    move-result-object v1

    .line 69
    .line 70
    const-string v2, "play_store_version"

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/narvii/util/PackageUtils;->getGooglePlayStoreVersionName()Ljava/lang/String;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 81
    move-result-object v0

    .line 82
    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    const-string v2, ""

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    .line 95
    move-result-object v2

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2, p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    .line 99
    move-result v2

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    move-result-object v1

    .line 107
    .line 108
    const-string v2, "play_services_available"

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method


# virtual methods
.method public activityOnCreate(Landroid/app/Activity;)Z
    .locals 9

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/app/NVActivity;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p1

    .line 6
    .line 7
    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 8
    .line 9
    iget-boolean v0, v0, Lcom/narvii/app/NVActivity;->restoreProcess:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    sget-object v0, Lcom/narvii/services/EnterCommunityHelper;->SOURCE:Lcom/narvii/util/statistics/TmpValue;

    .line 14
    .line 15
    const-string v1, "Restored App"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V

    .line 19
    goto :goto_0

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    const-string v1, "_pushIntent"

    .line 26
    const/4 v2, 0x0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 30
    move-result v0

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    sget-object v0, Lcom/narvii/services/EnterCommunityHelper;->SOURCE:Lcom/narvii/util/statistics/TmpValue;

    .line 35
    .line 36
    const-string v1, "Opened Push Notification"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    const-string v1, "ForwardActivity"

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 53
    move-result v0

    .line 54
    .line 55
    if-nez v0, :cond_1

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    const-string v1, "_pushClearType"

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 65
    move-result v5

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 69
    move-result-object v0

    .line 70
    .line 71
    const-string v1, "_pushClearCid"

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 75
    move-result v6

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 79
    move-result-object v0

    .line 80
    .line 81
    const-string v1, "_pushTrackId"

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    move-result-object v7

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 89
    move-result-object v0

    .line 90
    .line 91
    const-string v1, "_pushUrl"

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    move-result-object v8

    .line 96
    .line 97
    new-instance v0, Lcom/narvii/app/incubator/IncubatorApplication$2;

    .line 98
    move-object v3, v0

    .line 99
    move-object v4, p0

    .line 100
    .line 101
    .line 102
    invoke-direct/range {v3 .. v8}, Lcom/narvii/app/incubator/IncubatorApplication$2;-><init>(Lcom/narvii/app/incubator/IncubatorApplication;IILjava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    const-wide/16 v1, 0xc8

    .line 105
    .line 106
    .line 107
    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 108
    .line 109
    .line 110
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/app/NVApplication;->isAppInForeground()Z

    .line 111
    move-result v0

    .line 112
    .line 113
    if-nez v0, :cond_2

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 117
    move-result-object v0

    .line 118
    .line 119
    if-eqz v0, :cond_2

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 123
    move-result-object v0

    .line 124
    .line 125
    const-string v1, "_pushFrom"

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 129
    move-result-object v0

    .line 130
    .line 131
    const-class v1, Lcom/narvii/pushservice/PushNotificationService$PushFrom;

    .line 132
    .line 133
    .line 134
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 135
    move-result-object v0

    .line 136
    .line 137
    check-cast v0, Lcom/narvii/pushservice/PushNotificationService$PushFrom;

    .line 138
    .line 139
    if-eqz v0, :cond_2

    .line 140
    .line 141
    sget-object v1, Lcom/narvii/pushservice/PushNotificationService;->FROM_PUSH:Lcom/narvii/util/statistics/TmpValue;

    .line 142
    .line 143
    const-wide/16 v2, 0x5dc

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, v0, v2, v3}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;J)V

    .line 147
    .line 148
    .line 149
    :cond_2
    invoke-super {p0, p1}, Lcom/narvii/pushservice/PushApplication;->activityOnCreate(Landroid/app/Activity;)Z

    .line 150
    move-result v0

    .line 151
    .line 152
    .line 153
    invoke-static {p1}, Lcom/narvii/app/incubator/IncubatorApplication;->getCommunityId(Ljava/lang/Object;)I

    .line 154
    move-result p1

    .line 155
    .line 156
    if-eqz p1, :cond_3

    .line 157
    .line 158
    .line 159
    invoke-direct {p0, p1}, Lcom/narvii/app/incubator/IncubatorApplication;->createCommunityContext(I)Lcom/narvii/services/incubator/CommunityContext;

    .line 160
    move-result-object v1

    .line 161
    .line 162
    iget-object v2, v1, Lcom/narvii/services/incubator/CommunityContext;->serviceManager:Lcom/narvii/services/ServiceManager;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2}, Lcom/narvii/services/ServiceManager;->create()V

    .line 166
    .line 167
    iget-object v2, p0, Lcom/narvii/app/incubator/IncubatorApplication;->lives:Landroid/util/SparseIntArray;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    .line 171
    move-result v2

    .line 172
    .line 173
    iget-object v3, p0, Lcom/narvii/app/incubator/IncubatorApplication;->lives:Landroid/util/SparseIntArray;

    .line 174
    .line 175
    add-int/lit8 v4, v2, 0x1

    .line 176
    .line 177
    .line 178
    invoke-virtual {v3, p1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 179
    .line 180
    if-nez v2, :cond_3

    .line 181
    .line 182
    iget-object p1, v1, Lcom/narvii/services/incubator/CommunityContext;->serviceManager:Lcom/narvii/services/ServiceManager;

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1}, Lcom/narvii/services/ServiceManager;->start()V

    .line 186
    :cond_3
    return v0
.end method

.method public activityOnDestroy(Landroid/app/Activity;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/narvii/app/incubator/IncubatorApplication;->getCommunityId(Ljava/lang/Object;)I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->handler:Landroid/os/Handler;

    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v2, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/app/NVApplication;->activityOnDestroy(Landroid/app/Activity;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p1}, Lcom/narvii/app/incubator/IncubatorApplication;->clearBillingClient(Landroid/app/Activity;)V

    .line 24
    return-void
.end method

.method public activityOnPause(Landroid/app/Activity;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/narvii/app/incubator/IncubatorApplication;->getCommunityId(Ljava/lang/Object;)I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->handler:Landroid/os/Handler;

    .line 9
    const/4 v2, 0x2

    .line 10
    const/4 v3, 0x0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v2, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/app/NVApplication;->activityOnPause(Landroid/app/Activity;)V

    .line 21
    return-void
.end method

.method public activityOnResume(Landroid/app/Activity;)Z
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVApplication;->activityOnResume(Landroid/app/Activity;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lcom/narvii/app/incubator/IncubatorApplication;->getCommunityId(Ljava/lang/Object;)I

    .line 8
    move-result p1

    .line 9
    .line 10
    if-eqz p1, :cond_3

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->communityContextMap:Ljava/util/HashMap;

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    check-cast v1, Lcom/narvii/services/incubator/CommunityContext;

    .line 23
    .line 24
    const-string v2, "\'s community context not found"

    .line 25
    .line 26
    const-string v3, "x"

    .line 27
    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    .line 49
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 50
    goto :goto_1

    .line 51
    .line 52
    :cond_0
    iget v4, p0, Lcom/narvii/app/incubator/IncubatorApplication;->activeCid:I

    .line 53
    .line 54
    if-eq v4, p1, :cond_2

    .line 55
    .line 56
    if-eqz v4, :cond_2

    .line 57
    .line 58
    iget v5, p0, Lcom/narvii/app/incubator/IncubatorApplication;->activeCount:I

    .line 59
    .line 60
    if-lez v5, :cond_2

    .line 61
    const/4 v5, 0x0

    .line 62
    .line 63
    iput v5, p0, Lcom/narvii/app/incubator/IncubatorApplication;->activeCount:I

    .line 64
    .line 65
    iget-object v6, p0, Lcom/narvii/app/incubator/IncubatorApplication;->communityContextMap:Ljava/util/HashMap;

    .line 66
    .line 67
    .line 68
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    move-result-object v4

    .line 70
    .line 71
    .line 72
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    move-result-object v4

    .line 74
    .line 75
    check-cast v4, Lcom/narvii/services/incubator/CommunityContext;

    .line 76
    .line 77
    if-nez v4, :cond_1

    .line 78
    .line 79
    new-instance v4, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    iget v3, p0, Lcom/narvii/app/incubator/IncubatorApplication;->activeCid:I

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object v2

    .line 98
    .line 99
    .line 100
    invoke-static {v2}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 101
    goto :goto_0

    .line 102
    .line 103
    :cond_1
    iget-object v2, v4, Lcom/narvii/services/incubator/CommunityContext;->serviceManager:Lcom/narvii/services/ServiceManager;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2}, Lcom/narvii/services/ServiceManager;->pause()V

    .line 107
    .line 108
    :goto_0
    iget-object v2, p0, Lcom/narvii/app/incubator/IncubatorApplication;->handler:Landroid/os/Handler;

    .line 109
    const/4 v3, 0x2

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 113
    .line 114
    iget-object v2, p0, Lcom/narvii/app/incubator/IncubatorApplication;->handler:Landroid/os/Handler;

    .line 115
    .line 116
    const/16 v3, 0xc

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 120
    .line 121
    iput v5, p0, Lcom/narvii/app/incubator/IncubatorApplication;->activeCid:I

    .line 122
    .line 123
    :cond_2
    iput p1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->activeCid:I

    .line 124
    .line 125
    iget p1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->activeCount:I

    .line 126
    .line 127
    add-int/lit8 v2, p1, 0x1

    .line 128
    .line 129
    iput v2, p0, Lcom/narvii/app/incubator/IncubatorApplication;->activeCount:I

    .line 130
    .line 131
    if-nez p1, :cond_4

    .line 132
    .line 133
    iget-object p1, v1, Lcom/narvii/services/incubator/CommunityContext;->serviceManager:Lcom/narvii/services/ServiceManager;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1}, Lcom/narvii/services/ServiceManager;->resume()V

    .line 137
    goto :goto_1

    .line 138
    .line 139
    .line 140
    :cond_3
    invoke-direct {p0}, Lcom/narvii/app/incubator/IncubatorApplication;->onGlobalContextResume()V

    .line 141
    :cond_4
    :goto_1
    return v0
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "base"    # Landroid/content/Context;

    invoke-super {p0, p1}, Lcom/narvii/pushservice/PushApplication;->attachBaseContext(Landroid/content/Context;)V

    invoke-static {p0}, Landroid/support/multidex/MultiDex;->install(Landroid/content/Context;)V

    return-void
.end method

.method protected beforeServiceManagerCreated()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVApplication;->beforeServiceManagerCreated()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lcom/narvii/util/statistics/TeaManager;->init(Landroid/content/Context;)V

    .line 7
    return-void
.end method

.method public getService(ILjava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 4
    invoke-super {p0, p0, p2}, Lcom/narvii/app/NVApplication;->getService(Lcom/narvii/app/NVContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/app/incubator/IncubatorApplication;->createCommunityContext(I)Lcom/narvii/services/incubator/CommunityContext;

    move-result-object p1

    .line 6
    invoke-virtual {p1, p2}, Lcom/narvii/services/incubator/CommunityContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getService(Lcom/narvii/app/NVContext;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/narvii/app/NVContext;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/narvii/app/incubator/IncubatorApplication;->getCommunityId(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0, p2}, Lcom/narvii/app/incubator/IncubatorApplication;->getService(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVApplication;->getService(Lcom/narvii/app/NVContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hasNoLiveCommunity()Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->lives:Landroid/util/SparseIntArray;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    return v1

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    move v2, v0

    .line 13
    .line 14
    :goto_0
    iget-object v3, p0, Lcom/narvii/app/incubator/IncubatorApplication;->lives:Landroid/util/SparseIntArray;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    .line 18
    move-result v3

    .line 19
    .line 20
    if-ge v2, v3, :cond_2

    .line 21
    .line 22
    iget-object v3, p0, Lcom/narvii/app/incubator/IncubatorApplication;->lives:Landroid/util/SparseIntArray;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 26
    move-result v3

    .line 27
    .line 28
    if-eqz v3, :cond_1

    .line 29
    return v0

    .line 30
    .line 31
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_2
    return v1
.end method

.method public initActivityServices(Lcom/narvii/app/NVActivity;Lcom/narvii/services/ServiceManager;)V
    .locals 1

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/services/ApiServiceProvider;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Lcom/narvii/services/ApiServiceProvider;-><init>()V

    .line 6
    .line 7
    const-string v0, "api"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, v0, p1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 11
    .line 12
    new-instance p1, Lcom/narvii/services/LocationServiceProvider;

    .line 13
    .line 14
    .line 15
    invoke-direct {p1}, Lcom/narvii/services/LocationServiceProvider;-><init>()V

    .line 16
    .line 17
    const-string v0, "location"

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, v0, p1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 21
    .line 22
    new-instance p1, Lcom/narvii/services/PostEntryProvider;

    .line 23
    .line 24
    .line 25
    invoke-direct {p1}, Lcom/narvii/services/PostEntryProvider;-><init>()V

    .line 26
    .line 27
    const-string v0, "postEntry"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, v0, p1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 31
    .line 32
    const-string p1, "drawerHost"

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->drawerActivityProvider:Lcom/narvii/services/incubator/IncubatorDrawerHostActivityProvider;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, p1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 38
    .line 39
    const-string p1, "topActivity"

    .line 40
    .line 41
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->topActivityServiceProvider:Lcom/narvii/util/services/TopActivityServiceProvider;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, p1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 45
    .line 46
    const-string p1, "drawerRightHost"

    .line 47
    .line 48
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->drawerRightProvider:Lcom/narvii/services/DrawerRightHostProvider;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, p1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 52
    .line 53
    const-string p1, "stats"

    .line 54
    .line 55
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->statsProvider:Lcom/narvii/services/incubator/IncubatorStatsProvider;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2, p1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 59
    .line 60
    const-string p1, "applicationSessionHelper"

    .line 61
    .line 62
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->appSessionHelper:Lcom/narvii/app/ApplicationSessionHelper;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, p1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 66
    .line 67
    const-string p1, "pasteBoard"

    .line 68
    .line 69
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->pasteBoardServiceProvider:Lcom/narvii/services/incubator/PasteBoardServiceProvider;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2, p1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 73
    .line 74
    new-instance p1, Lcom/narvii/services/incubator/IncubatorBackToHomeHelper;

    .line 75
    .line 76
    .line 77
    invoke-direct {p1}, Lcom/narvii/services/incubator/IncubatorBackToHomeHelper;-><init>()V

    .line 78
    .line 79
    const-string v0, "_backToHomeHelper"

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2, v0, p1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 83
    .line 84
    const-string p1, "pushInvite"

    .line 85
    .line 86
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->pushInviteHelper:Lcom/narvii/services/PushInviteHelper;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2, p1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 90
    .line 91
    const-string p1, "rtc"

    .line 92
    .line 93
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->rtcServiceProvider:Lcom/narvii/services/RtcServiceProvider;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2, p1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 97
    .line 98
    const-string p1, "liveLayerHost"

    .line 99
    .line 100
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->liveLayerActivityProvider:Lcom/narvii/services/incubator/IncubatorLiveLayerHostActivityProvider;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2, p1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 104
    .line 105
    const-string p1, "cbbHost"

    .line 106
    .line 107
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->cbbHostActivityProvider:Lcom/narvii/services/incubator/IncubatorCBBHostActivityProvider;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2, p1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 111
    .line 112
    const-string p1, "visitorBarHost"

    .line 113
    .line 114
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->visitorBarHostActivityProvider:Lcom/narvii/services/incubator/IncubatorVisitorBarHostActivityProvider;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2, p1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 118
    .line 119
    new-instance p1, Lcom/narvii/chat/setting/helper/ChatWaitingListProvider;

    .line 120
    .line 121
    .line 122
    invoke-direct {p1}, Lcom/narvii/chat/setting/helper/ChatWaitingListProvider;-><init>()V

    .line 123
    .line 124
    const-string v0, "chatWaitingList"

    .line 125
    .line 126
    .line 127
    invoke-virtual {p2, v0, p1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 128
    .line 129
    const-string p1, "checkIn"

    .line 130
    .line 131
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->checkInActivityServiceProvider:Lcom/narvii/checkin/CheckInActivityServiceProvider;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p2, p1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 135
    .line 136
    sget-boolean p1, Lcom/narvii/app/NVApplication;->DEBUG:Z

    .line 137
    .line 138
    if-eqz p1, :cond_0

    .line 139
    .line 140
    const-string p1, "_debug"

    .line 141
    .line 142
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->debugServiceProvider:Lcom/narvii/util/debug/DebugServiceProvider;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p2, p1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 146
    .line 147
    const-string p1, "_signallingMonitor"

    .line 148
    .line 149
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->signallingMonitorHelper:Lcom/narvii/util/debug/SignallingMonitorHelper;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p2, p1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 153
    :cond_0
    return-void
.end method

.method protected initApplicationServices(Lcom/narvii/services/ServiceManager;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/pushservice/PushApplication;->initApplicationServices(Lcom/narvii/services/ServiceManager;)V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/util/PackageUtils;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 11
    .line 12
    const/16 v2, 0x1a

    .line 13
    .line 14
    if-lt v1, v2, :cond_0

    .line 15
    .line 16
    new-instance v1, Lcom/narvii/notification/channel/NotificationChannelHelper;

    .line 17
    .line 18
    .line 19
    invoke-direct {v1}, Lcom/narvii/notification/channel/NotificationChannelHelper;-><init>()V

    .line 20
    .line 21
    const-string v2, "notificationChannel"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v2, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 25
    .line 26
    :cond_0
    new-instance v1, Lcom/narvii/services/AminoFragmentRegisterProvider;

    .line 27
    .line 28
    .line 29
    invoke-direct {v1}, Lcom/narvii/services/AminoFragmentRegisterProvider;-><init>()V

    .line 30
    .line 31
    const-string v2, "fragmentRegister"

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v2, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 35
    .line 36
    new-instance v1, Lcom/narvii/chat/ChatPushProvider;

    .line 37
    .line 38
    .line 39
    invoke-direct {v1}, Lcom/narvii/chat/ChatPushProvider;-><init>()V

    .line 40
    .line 41
    const-string v2, "_pushChat"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v2, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 45
    .line 46
    new-instance v1, Lcom/narvii/services/PrefsProvider;

    .line 47
    .line 48
    const-string v2, "incubator"

    .line 49
    .line 50
    .line 51
    invoke-direct {v1, v2}, Lcom/narvii/services/PrefsProvider;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    const-string v2, "prefs"

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v2, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 57
    .line 58
    const-string v1, "filesDir"

    .line 59
    .line 60
    iget-object v2, p0, Lcom/narvii/app/incubator/IncubatorApplication;->filesDirProvider:Lcom/narvii/services/incubator/IncubatorFilesDirServiceProvider;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v1, v2}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 64
    .line 65
    const-string v1, "cacheDir"

    .line 66
    .line 67
    iget-object v2, p0, Lcom/narvii/app/incubator/IncubatorApplication;->cacheDirProvider:Lcom/narvii/services/incubator/IncubatorCacheDirServiceProvider;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v1, v2}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 71
    .line 72
    new-instance v1, Lcom/narvii/services/VersionPrefsServiceProvider;

    .line 73
    .line 74
    .line 75
    invoke-direct {v1}, Lcom/narvii/services/VersionPrefsServiceProvider;-><init>()V

    .line 76
    .line 77
    const-string v2, "versionPrefs"

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v2, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 81
    .line 82
    new-instance v1, Lcom/narvii/services/ImageDiskCacheProvider;

    .line 83
    .line 84
    .line 85
    invoke-direct {v1}, Lcom/narvii/services/ImageDiskCacheProvider;-><init>()V

    .line 86
    .line 87
    const-string v2, "imageDiskCache"

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v2, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 91
    .line 92
    new-instance v1, Lcom/narvii/services/ImageLoaderProvider;

    .line 93
    .line 94
    .line 95
    invoke-direct {v1}, Lcom/narvii/services/ImageLoaderProvider;-><init>()V

    .line 96
    .line 97
    const-string v2, "imageLoader"

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v2, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 101
    .line 102
    new-instance v1, Lcom/narvii/services/ApiRequestQueueProvider;

    .line 103
    .line 104
    .line 105
    invoke-direct {v1}, Lcom/narvii/services/ApiRequestQueueProvider;-><init>()V

    .line 106
    .line 107
    const-string v2, "apiRequestQueue"

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, v2, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 111
    .line 112
    new-instance v1, Lcom/narvii/services/ApiServiceProvider;

    .line 113
    .line 114
    .line 115
    invoke-direct {v1}, Lcom/narvii/services/ApiServiceProvider;-><init>()V

    .line 116
    .line 117
    const-string v2, "api"

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, v2, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 121
    .line 122
    const-string v1, "account"

    .line 123
    .line 124
    iget-object v2, p0, Lcom/narvii/app/incubator/IncubatorApplication;->accountServiceProvider:Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, v1, v2}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 128
    .line 129
    new-instance v1, Lcom/narvii/services/LocationServiceProvider;

    .line 130
    .line 131
    .line 132
    invoke-direct {v1}, Lcom/narvii/services/LocationServiceProvider;-><init>()V

    .line 133
    .line 134
    const-string v2, "location"

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, v2, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 138
    .line 139
    new-instance v1, Lcom/narvii/services/incubator/IncubatorCommunityServiceProvider;

    .line 140
    .line 141
    .line 142
    invoke-direct {v1}, Lcom/narvii/services/incubator/IncubatorCommunityServiceProvider;-><init>()V

    .line 143
    .line 144
    const-string v2, "community"

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1, v2, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 148
    .line 149
    new-instance v1, Lcom/narvii/services/PhotoServiceProvider;

    .line 150
    .line 151
    .line 152
    invoke-direct {v1}, Lcom/narvii/services/PhotoServiceProvider;-><init>()V

    .line 153
    .line 154
    const-string v2, "photo"

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, v2, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 158
    .line 159
    const-string v1, "draft"

    .line 160
    .line 161
    iget-object v2, p0, Lcom/narvii/app/incubator/IncubatorApplication;->draftManagerProvider:Lcom/narvii/services/incubator/IncubatorDraftManagerProvider;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1, v1, v2}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 165
    .line 166
    const-string v1, "notification"

    .line 167
    .line 168
    iget-object v2, p0, Lcom/narvii/app/incubator/IncubatorApplication;->notificationCenterProvider:Lcom/narvii/services/incubator/IncubatorNotificationCenterProvider;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1, v1, v2}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 172
    .line 173
    new-instance v1, Lcom/narvii/services/GifLoaderProvider;

    .line 174
    .line 175
    .line 176
    invoke-direct {v1}, Lcom/narvii/services/GifLoaderProvider;-><init>()V

    .line 177
    .line 178
    const-string v2, "gifLoader"

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1, v2, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 182
    .line 183
    new-instance v1, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoaderProvider;

    .line 184
    .line 185
    .line 186
    invoke-direct {v1}, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoaderProvider;-><init>()V

    .line 187
    .line 188
    const-string v2, "avatarFrameLoader"

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1, v2, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 192
    .line 193
    new-instance v1, Lcom/narvii/media/online/audio/AudioDownloaderProvider;

    .line 194
    .line 195
    .line 196
    invoke-direct {v1}, Lcom/narvii/media/online/audio/AudioDownloaderProvider;-><init>()V

    .line 197
    .line 198
    const-string v2, "audioDownloader"

    .line 199
    .line 200
    .line 201
    invoke-virtual {p1, v2, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 202
    .line 203
    new-instance v1, Lcom/narvii/services/WebPLoaderProvider;

    .line 204
    .line 205
    .line 206
    invoke-direct {v1}, Lcom/narvii/services/WebPLoaderProvider;-><init>()V

    .line 207
    .line 208
    const-string v2, "webpLoader"

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1, v2, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 212
    .line 213
    new-instance v1, Lcom/narvii/services/incubator/IncubatorBadgeServiceProvider;

    .line 214
    .line 215
    .line 216
    invoke-direct {v1}, Lcom/narvii/services/incubator/IncubatorBadgeServiceProvider;-><init>()V

    .line 217
    .line 218
    const-string v2, "badge"

    .line 219
    .line 220
    .line 221
    invoke-virtual {p1, v2, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 222
    .line 223
    const-string v1, "drawerRightHost"

    .line 224
    .line 225
    iget-object v2, p0, Lcom/narvii/app/incubator/IncubatorApplication;->drawerRightProvider:Lcom/narvii/services/DrawerRightHostProvider;

    .line 226
    .line 227
    .line 228
    invoke-virtual {p1, v1, v2}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0}, Lcom/narvii/util/PackageUtils;->isGooglePlayInstalled()Z

    .line 232
    move-result v0

    .line 233
    .line 234
    if-eqz v0, :cond_1

    .line 235
    .line 236
    new-instance v0, Lcom/narvii/services/GooglePlayServiceProvider;

    .line 237
    .line 238
    .line 239
    invoke-direct {v0}, Lcom/narvii/services/GooglePlayServiceProvider;-><init>()V

    .line 240
    .line 241
    const-string v1, "googlePlay"

    .line 242
    .line 243
    .line 244
    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 245
    .line 246
    .line 255
    .line 256
    :cond_1
    new-instance v0, Lcom/narvii/services/PushHelper;

    .line 257
    .line 258
    .line 259
    invoke-direct {v0}, Lcom/narvii/services/PushHelper;-><init>()V

    .line 260
    .line 261
    const-string v1, "_pushHelper"

    .line 262
    .line 263
    .line 264
    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 265
    .line 266
    new-instance v0, Lcom/narvii/services/CleanupHelper;

    .line 267
    .line 268
    .line 269
    invoke-direct {v0}, Lcom/narvii/services/CleanupHelper;-><init>()V

    .line 270
    .line 271
    const-string v1, "_cleanupHelper"

    .line 272
    .line 273
    .line 274
    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 275
    .line 276
    const-string v0, "stats"

    .line 277
    .line 278
    iget-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->statsProvider:Lcom/narvii/services/incubator/IncubatorStatsProvider;

    .line 279
    .line 280
    .line 281
    invoke-virtual {p1, v0, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 282
    .line 283
    const-string v0, "applicationSessionHelper"

    .line 284
    .line 285
    iget-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->appSessionHelper:Lcom/narvii/app/ApplicationSessionHelper;

    .line 286
    .line 287
    .line 288
    invoke-virtual {p1, v0, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 289
    .line 290
    new-instance v0, Lcom/narvii/services/MyCommunityListServiceProvider;

    .line 291
    .line 292
    .line 293
    invoke-direct {v0}, Lcom/narvii/services/MyCommunityListServiceProvider;-><init>()V

    .line 294
    .line 295
    const-string v1, "myCommunityList"

    .line 296
    .line 297
    .line 298
    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 299
    .line 300
    new-instance v0, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;

    .line 301
    .line 302
    .line 303
    invoke-direct {v0}, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;-><init>()V

    .line 304
    .line 305
    const-string v1, "_myCommunityListHelper"

    .line 306
    .line 307
    .line 308
    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 309
    .line 310
    const-string v0, "config"

    .line 311
    .line 312
    iget-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->configProvider:Lcom/narvii/services/incubator/IncubatorConfigProvider;

    .line 313
    .line 314
    .line 315
    invoke-virtual {p1, v0, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 316
    .line 317
    const-string v0, "navigator"

    .line 318
    .line 319
    iget-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->navigatorProvider:Lcom/narvii/services/incubator/IncubatorNavigatorProvider;

    .line 320
    .line 321
    .line 322
    invoke-virtual {p1, v0, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 323
    .line 324
    const-string v0, "statistics"

    .line 325
    .line 326
    iget-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->statisticsServiceProvider:Lcom/narvii/services/incubator/IncubatorStatisticsServiceProvider;

    .line 327
    .line 328
    .line 329
    invoke-virtual {p1, v0, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 330
    .line 331
    new-instance v0, Lcom/narvii/services/ThemePackServiceProvider;

    .line 332
    .line 333
    .line 334
    invoke-direct {v0}, Lcom/narvii/services/ThemePackServiceProvider;-><init>()V

    .line 335
    .line 336
    const-string v1, "themePack"

    .line 337
    .line 338
    .line 339
    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 340
    .line 341
    const-string v0, "pasteBoard"

    .line 342
    .line 343
    iget-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->pasteBoardServiceProvider:Lcom/narvii/services/incubator/PasteBoardServiceProvider;

    .line 344
    .line 345
    .line 346
    invoke-virtual {p1, v0, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 347
    .line 348
    new-instance v0, Lcom/narvii/services/LanguageServiceProvider;

    .line 349
    .line 350
    .line 351
    invoke-direct {v0}, Lcom/narvii/services/LanguageServiceProvider;-><init>()V

    .line 352
    .line 353
    const-string v1, "language"

    .line 354
    .line 355
    .line 356
    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 357
    .line 358
    new-instance v0, Lcom/narvii/services/YoutubeServiceProvider;

    .line 359
    .line 360
    .line 361
    invoke-direct {v0}, Lcom/narvii/services/YoutubeServiceProvider;-><init>()V

    .line 362
    .line 363
    const-string v1, "youtube"

    .line 364
    .line 365
    .line 366
    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 367
    .line 368
    new-instance v0, Lcom/narvii/services/MediaPreloadServiceProvider;

    .line 369
    .line 370
    .line 371
    invoke-direct {v0}, Lcom/narvii/services/MediaPreloadServiceProvider;-><init>()V

    .line 372
    .line 373
    const-string v1, "mediapreload"

    .line 374
    .line 375
    .line 376
    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 377
    .line 378
    new-instance v0, Lcom/narvii/services/AffiliationsServiceProvider;

    .line 379
    .line 380
    .line 381
    invoke-direct {v0}, Lcom/narvii/services/AffiliationsServiceProvider;-><init>()V

    .line 382
    .line 383
    const-string v1, "affiliations"

    .line 384
    .line 385
    .line 386
    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 387
    .line 388
    new-instance v0, Lcom/narvii/master/language/ContentLanguageServiceProvider;

    .line 389
    .line 390
    .line 391
    invoke-direct {v0}, Lcom/narvii/master/language/ContentLanguageServiceProvider;-><init>()V

    .line 392
    .line 393
    const-string v1, "content_language"

    .line 394
    .line 395
    .line 396
    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 397
    .line 398
    const-string v0, "ranking"

    .line 399
    .line 400
    iget-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->rankingServiceProvider:Lcom/narvii/services/RankingServiceProvider;

    .line 401
    .line 402
    .line 403
    invoke-virtual {p1, v0, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 404
    .line 405
    const-string v0, "poll"

    .line 406
    .line 407
    iget-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->pollServiceProvider:Lcom/narvii/services/PollServiceProvider;

    .line 408
    .line 409
    .line 410
    invoke-virtual {p1, v0, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 411
    .line 412
    const-string v0, "_updateDeviceTokenHelper"

    .line 413
    .line 414
    iget-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->updateDeviceTokenHelper:Lcom/narvii/pushservice/UpdateDeviceTokenHelper;

    .line 415
    .line 416
    .line 417
    invoke-virtual {p1, v0, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 418
    .line 419
    new-instance v0, Lcom/narvii/services/MediaPickCallbackServiceProvider;

    .line 420
    .line 421
    .line 422
    invoke-direct {v0}, Lcom/narvii/services/MediaPickCallbackServiceProvider;-><init>()V

    .line 423
    .line 424
    const-string v1, "mediaPickCallback"

    .line 425
    .line 426
    .line 427
    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 428
    .line 429
    new-instance v0, Lcom/narvii/video/providers/VideoServiceProvider;

    .line 430
    .line 431
    .line 432
    invoke-direct {v0}, Lcom/narvii/video/providers/VideoServiceProvider;-><init>()V

    .line 433
    .line 434
    const-string v1, "videoManager"

    .line 435
    .line 436
    .line 437
    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 438
    .line 439
    new-instance v0, Lcom/narvii/video/providers/EditorPackServiceProvider;

    .line 440
    .line 441
    .line 442
    invoke-direct {v0}, Lcom/narvii/video/providers/EditorPackServiceProvider;-><init>()V

    .line 443
    .line 444
    const-string v1, "editorPackFactory"

    .line 445
    .line 446
    .line 447
    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 448
    .line 449
    new-instance v0, Lcom/narvii/services/EventLogProfileServiceProvider;

    .line 450
    .line 451
    .line 452
    invoke-direct {v0}, Lcom/narvii/services/EventLogProfileServiceProvider;-><init>()V

    .line 453
    .line 454
    const-string v1, "eventLogProfile"

    .line 455
    .line 456
    .line 457
    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 458
    .line 459
    new-instance v0, Lcom/narvii/services/WsServiceProvider;

    .line 460
    .line 461
    .line 462
    invoke-direct {v0}, Lcom/narvii/services/WsServiceProvider;-><init>()V

    .line 463
    .line 464
    const-string v1, "ws"

    .line 465
    .line 466
    .line 467
    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 468
    .line 469
    new-instance v0, Lcom/narvii/util/ws/LogWsServiceProvider;

    .line 470
    .line 471
    .line 472
    invoke-direct {v0}, Lcom/narvii/util/ws/LogWsServiceProvider;-><init>()V

    .line 473
    .line 474
    const-string v1, "logWs"

    .line 475
    .line 476
    .line 477
    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 478
    .line 479
    new-instance v0, Lcom/narvii/services/SignallingServiceProvider;

    .line 480
    .line 481
    .line 482
    invoke-direct {v0}, Lcom/narvii/services/SignallingServiceProvider;-><init>()V

    .line 483
    .line 484
    const-string v1, "signalling"

    .line 485
    .line 486
    .line 487
    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 488
    .line 489
    new-instance v0, Lcom/narvii/chat/video/RtcChatManagerService;

    .line 490
    .line 491
    .line 492
    invoke-direct {v0}, Lcom/narvii/chat/video/RtcChatManagerService;-><init>()V

    .line 493
    .line 494
    const-string v1, "rtcManager"

    .line 495
    .line 496
    .line 497
    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 498
    .line 499
    const-string v0, "rtc"

    .line 500
    .line 501
    iget-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->rtcServiceProvider:Lcom/narvii/services/RtcServiceProvider;

    .line 502
    .line 503
    .line 504
    invoke-virtual {p1, v0, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 505
    .line 506
    new-instance v0, Lcom/narvii/services/LiverLayerWSServiceProvider;

    .line 507
    .line 508
    .line 509
    invoke-direct {v0}, Lcom/narvii/services/LiverLayerWSServiceProvider;-><init>()V

    .line 510
    .line 511
    const-string v1, "liveLayerWS"

    .line 512
    .line 513
    .line 514
    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 515
    .line 516
    new-instance v0, Lcom/narvii/services/AppLogEventServiceProvider;

    .line 517
    .line 518
    .line 519
    invoke-direct {v0}, Lcom/narvii/services/AppLogEventServiceProvider;-><init>()V

    .line 520
    .line 521
    const-string v1, "logEvent"

    .line 522
    .line 523
    .line 524
    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 525
    .line 526
    const-string v0, "pushInvite"

    .line 527
    .line 528
    iget-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->pushInviteHelper:Lcom/narvii/services/PushInviteHelper;

    .line 529
    .line 530
    .line 531
    invoke-virtual {p1, v0, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 532
    .line 533
    const-string v0, "callScreen"

    .line 534
    .line 535
    iget-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 536
    .line 537
    .line 538
    invoke-virtual {p1, v0, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 539
    .line 540
    const-string v0, "block"

    .line 541
    .line 542
    iget-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->globalBlockServiceProvider:Lcom/narvii/services/incubator/IncubatorGlobalBlockServiceProvider;

    .line 543
    .line 544
    .line 545
    invoke-virtual {p1, v0, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 546
    .line 547
    new-instance v0, Lcom/narvii/services/MediaRecorderServiceProvider;

    .line 548
    .line 549
    .line 550
    invoke-direct {v0}, Lcom/narvii/services/MediaRecorderServiceProvider;-><init>()V

    .line 551
    .line 552
    const-string v1, "mediaRecorder"

    .line 553
    .line 554
    .line 555
    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 556
    .line 557
    new-instance v0, Lcom/narvii/services/MediaLoaderProvider;

    .line 558
    .line 559
    .line 560
    invoke-direct {v0}, Lcom/narvii/services/MediaLoaderProvider;-><init>()V

    .line 561
    .line 562
    const-string v1, "mediaLoader"

    .line 563
    .line 564
    .line 565
    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 566
    .line 567
    new-instance v0, Lcom/narvii/services/MediaPlayerProvider;

    .line 568
    .line 569
    .line 570
    invoke-direct {v0}, Lcom/narvii/services/MediaPlayerProvider;-><init>()V

    .line 571
    .line 572
    const-string v1, "mediaPlayer"

    .line 573
    .line 574
    .line 575
    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 576
    .line 577
    new-instance v0, Lcom/narvii/services/MessageReadCleanHelper;

    .line 578
    .line 579
    .line 580
    invoke-direct {v0}, Lcom/narvii/services/MessageReadCleanHelper;-><init>()V

    .line 581
    .line 582
    const-string v1, "_messageReadCleanHelper"

    .line 583
    .line 584
    .line 585
    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 586
    .line 587
    const-string v0, "recentCommunities"

    .line 588
    .line 589
    iget-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->recentCommunityHelper:Lcom/narvii/community/RecentCommunityHelper;

    .line 590
    .line 591
    .line 592
    invoke-virtual {p1, v0, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 593
    .line 594
    const-string v0, "logging"

    .line 595
    .line 596
    iget-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->loggingServiceProvider:Lcom/narvii/services/incubator/IncubatorLoggingServiceProvider;

    .line 597
    .line 598
    .line 599
    invoke-virtual {p1, v0, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 600
    .line 601
    new-instance v0, Lcom/narvii/services/DetailLoggingHelper;

    .line 602
    .line 603
    .line 604
    invoke-direct {v0}, Lcom/narvii/services/DetailLoggingHelper;-><init>()V

    .line 605
    .line 606
    const-string v1, "_detailLogging"

    .line 607
    .line 608
    .line 609
    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 610
    .line 611
    new-instance v0, Lcom/narvii/chat/screenroom/ScreenRoomServiceProvider;

    .line 612
    .line 613
    .line 614
    invoke-direct {v0}, Lcom/narvii/chat/screenroom/ScreenRoomServiceProvider;-><init>()V

    .line 615
    .line 616
    const-string v1, "screenRoom"

    .line 617
    .line 618
    .line 619
    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 620
    .line 621
    const-string v0, "messageRead"

    .line 622
    .line 623
    iget-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->messageReadServiceProvider:Lcom/narvii/services/MessageReadServiceProvider;

    .line 624
    .line 625
    .line 626
    invoke-virtual {p1, v0, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 627
    .line 628
    new-instance v0, Lcom/narvii/services/LiveLayerIncubatorApplicationServiceProvider;

    .line 629
    .line 630
    .line 631
    invoke-direct {v0}, Lcom/narvii/services/LiveLayerIncubatorApplicationServiceProvider;-><init>()V

    .line 632
    .line 633
    const-string v1, "liveLayer"

    .line 634
    .line 635
    .line 636
    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 637
    .line 638
    const-string v0, "chat"

    .line 639
    .line 640
    iget-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->chatServiceProvider:Lcom/narvii/services/ChatServiceProvider;

    .line 641
    .line 642
    .line 643
    invoke-virtual {p1, v0, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 644
    .line 645
    new-instance v0, Lcom/narvii/services/GlobalChatServiceProvider;

    .line 646
    .line 647
    .line 648
    invoke-direct {v0}, Lcom/narvii/services/GlobalChatServiceProvider;-><init>()V

    .line 649
    .line 650
    const-string v1, "globalChat"

    .line 651
    .line 652
    .line 653
    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 654
    .line 655
    new-instance v0, Lcom/narvii/monetization/bubble/BubbleServiceProvider;

    .line 656
    .line 657
    .line 658
    invoke-direct {v0}, Lcom/narvii/monetization/bubble/BubbleServiceProvider;-><init>()V

    .line 659
    .line 660
    const-string v1, "bubble"

    .line 661
    .line 662
    .line 663
    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 664
    .line 665
    new-instance v0, Lcom/narvii/services/AdsServiceProvider;

    .line 666
    .line 667
    .line 668
    invoke-direct {v0}, Lcom/narvii/services/AdsServiceProvider;-><init>()V

    .line 669
    .line 670
    const-string v1, "ads"

    .line 671
    .line 672
    .line 673
    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 674
    .line 675
    const-string v0, "membership"

    .line 676
    .line 677
    iget-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->membershipServiceProvider:Lcom/narvii/services/MembershipServiceProvider;

    .line 678
    .line 679
    .line 680
    invoke-virtual {p1, v0, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 681
    .line 682
    const-string v0, "stickerCache"

    .line 683
    .line 684
    iget-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->stickerCacheServiceProvider:Lcom/narvii/services/StickerCacheServiceProvider;

    .line 685
    .line 686
    .line 687
    invoke-virtual {p1, v0, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 688
    .line 689
    new-instance v0, Lcom/narvii/wallet/EarnCoinToastHelper;

    .line 690
    .line 691
    .line 692
    invoke-direct {v0}, Lcom/narvii/wallet/EarnCoinToastHelper;-><init>()V

    .line 693
    .line 694
    const-string v1, "_earnCoinToast"

    .line 695
    .line 696
    .line 697
    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 698
    .line 699
    const-string v0, "topActivity"

    .line 700
    .line 701
    iget-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->topActivityServiceProvider:Lcom/narvii/util/services/TopActivityServiceProvider;

    .line 702
    .line 703
    .line 704
    invoke-virtual {p1, v0, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 705
    .line 706
    const-string v0, "sticker"

    .line 707
    .line 708
    iget-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->stickerServiceProvider:Lcom/narvii/services/StickerServiceProvider;

    .line 709
    .line 710
    .line 711
    invoke-virtual {p1, v0, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 712
    .line 713
    const-string v0, "localeChange"

    .line 714
    .line 715
    iget-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->localeChangeListener:Lcom/narvii/services/LocaleChangeListener;

    .line 716
    .line 717
    .line 718
    invoke-virtual {p1, v0, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 719
    .line 720
    const-string v0, "keystore"

    .line 721
    .line 722
    iget-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->keyStoreProvider:Lcom/narvii/services/KeyStoreServiceProvider;

    .line 723
    .line 724
    .line 725
    invoke-virtual {p1, v0, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 726
    .line 727
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    .line 728
    .line 729
    if-eqz v0, :cond_2

    .line 730
    .line 731
    const-string v0, "_debug"

    .line 732
    .line 733
    iget-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->debugServiceProvider:Lcom/narvii/util/debug/DebugServiceProvider;

    .line 734
    .line 735
    .line 736
    invoke-virtual {p1, v0, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 737
    .line 738
    const-string v0, "_signallingMonitor"

    .line 739
    .line 740
    iget-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->signallingMonitorHelper:Lcom/narvii/util/debug/SignallingMonitorHelper;

    .line 741
    .line 742
    .line 743
    invoke-virtual {p1, v0, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 744
    .line 745
    :cond_2
    new-instance v0, Lcom/narvii/util/crashlytics/CrashKeyLogHelper;

    .line 746
    .line 747
    .line 748
    invoke-direct {v0}, Lcom/narvii/util/crashlytics/CrashKeyLogHelper;-><init>()V

    .line 749
    .line 750
    const-string v1, "_crashKeyLog"

    .line 751
    .line 752
    .line 753
    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 754
    .line 755
    new-instance v0, Lcom/narvii/services/AuidServiceProvider;

    .line 756
    .line 757
    .line 758
    invoke-direct {v0}, Lcom/narvii/services/AuidServiceProvider;-><init>()V

    .line 759
    .line 760
    const-string v1, "auid"

    .line 761
    .line 762
    .line 763
    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 764
    .line 765
    new-instance v0, Lcom/narvii/services/DevOptionsHelper;

    .line 766
    .line 767
    .line 768
    invoke-direct {v0}, Lcom/narvii/services/DevOptionsHelper;-><init>()V

    .line 769
    .line 770
    const-string v1, "devOptions"

    .line 771
    .line 772
    .line 773
    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 774
    .line 775
    new-instance v0, Lcom/narvii/master/theme/MasterThemeServiceProvider;

    .line 776
    .line 777
    .line 778
    invoke-direct {v0}, Lcom/narvii/master/theme/MasterThemeServiceProvider;-><init>()V

    .line 779
    .line 780
    const-string v1, "masterTheme"

    .line 781
    .line 782
    .line 783
    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 784
    .line 785
    new-instance v0, Lcom/narvii/util/statistics/FirebaseLogManager$FirebaseTimeTrack;

    .line 786
    .line 787
    .line 788
    invoke-direct {v0}, Lcom/narvii/util/statistics/FirebaseLogManager$FirebaseTimeTrack;-><init>()V

    .line 789
    .line 790
    const-string v1, "_firebaseTimeTrack"

    .line 791
    .line 792
    .line 793
    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 794
    .line 795
    new-instance v0, Lcom/narvii/chat/service/MyChatListServiceProvider;

    .line 796
    .line 797
    .line 798
    invoke-direct {v0}, Lcom/narvii/chat/service/MyChatListServiceProvider;-><init>()V

    .line 799
    .line 800
    const-string v1, "myChatList"

    .line 801
    .line 802
    .line 803
    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 804
    .line 805
    new-instance v0, Lcom/narvii/services/SmAntiFraudServiceProvider;

    .line 806
    .line 807
    .line 808
    invoke-direct {v0}, Lcom/narvii/services/SmAntiFraudServiceProvider;-><init>()V

    .line 809
    .line 810
    const-string v1, "antiFraud"

    .line 811
    .line 812
    .line 813
    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 814
    .line 815
    new-instance v0, Lcom/narvii/chat/waitinglist/WaitingListProvider;

    .line 816
    .line 817
    .line 818
    invoke-direct {v0}, Lcom/narvii/chat/waitinglist/WaitingListProvider;-><init>()V

    .line 819
    .line 820
    const-string v1, "waitingList"

    .line 821
    .line 822
    .line 823
    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 824
    .line 825
    new-instance v0, Lcom/narvii/community/JoinCommunityServiceProvider;

    .line 826
    .line 827
    .line 828
    invoke-direct {v0}, Lcom/narvii/community/JoinCommunityServiceProvider;-><init>()V

    .line 829
    .line 830
    const-string v1, "joinCommunity"

    .line 831
    .line 832
    .line 833
    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 834
    .line 835
    new-instance v0, Lcom/narvii/services/incubator/VisitorModeServiceProvider;

    .line 836
    .line 837
    .line 838
    invoke-direct {v0}, Lcom/narvii/services/incubator/VisitorModeServiceProvider;-><init>()V

    .line 839
    .line 840
    const-string v1, "visitorMode"

    .line 841
    .line 842
    .line 843
    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 844
    .line 845
    new-instance v0, Lcom/narvii/services/AttributeServiceProvider;

    .line 846
    .line 847
    .line 848
    invoke-direct {v0}, Lcom/narvii/services/AttributeServiceProvider;-><init>()V

    .line 849
    .line 850
    const-string v1, "attribute"

    .line 851
    .line 852
    .line 853
    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 854
    .line 855
    new-instance v0, Lcom/narvii/services/incubator/IncubatorNoticeServiceProvider;

    .line 856
    .line 857
    .line 858
    invoke-direct {v0}, Lcom/narvii/services/incubator/IncubatorNoticeServiceProvider;-><init>()V

    .line 859
    .line 860
    const-string v1, "_notice"

    .line 861
    .line 862
    .line 863
    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 864
    return-void
.end method

.method public initCommunityServices(Lcom/narvii/services/incubator/CommunityContext;Lcom/narvii/services/ServiceManager;)V
    .locals 1

    .line 1
    .line 2
    const-string p1, "config"

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->configProvider:Lcom/narvii/services/incubator/IncubatorConfigProvider;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2, p1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 8
    .line 9
    const-string p1, "account"

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->accountServiceProvider:Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2, p1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 15
    .line 16
    new-instance p1, Lcom/narvii/services/ApiServiceProvider;

    .line 17
    .line 18
    .line 19
    invoke-direct {p1}, Lcom/narvii/services/ApiServiceProvider;-><init>()V

    .line 20
    .line 21
    const-string v0, "api"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, v0, p1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 25
    .line 26
    const-string p1, "filesDir"

    .line 27
    .line 28
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->filesDirProvider:Lcom/narvii/services/incubator/IncubatorFilesDirServiceProvider;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 32
    .line 33
    const-string p1, "cacheDir"

    .line 34
    .line 35
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->cacheDirProvider:Lcom/narvii/services/incubator/IncubatorCacheDirServiceProvider;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, p1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 39
    .line 40
    const-string p1, "drawerHost"

    .line 41
    .line 42
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->drawerCommunityProvider:Lcom/narvii/services/incubator/IncubatorDrawerHostCommunityProvider;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, p1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 46
    .line 47
    const-string p1, "navigator"

    .line 48
    .line 49
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->navigatorProvider:Lcom/narvii/services/incubator/IncubatorNavigatorProvider;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, p1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 53
    .line 54
    const-string p1, "notification"

    .line 55
    .line 56
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->notificationCenterProvider:Lcom/narvii/services/incubator/IncubatorNotificationCenterProvider;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, p1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 60
    .line 61
    const-string p1, "draft"

    .line 62
    .line 63
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->draftManagerProvider:Lcom/narvii/services/incubator/IncubatorDraftManagerProvider;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2, p1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 67
    .line 68
    const-string p1, "statistics"

    .line 69
    .line 70
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->statisticsServiceProvider:Lcom/narvii/services/incubator/IncubatorStatisticsServiceProvider;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2, p1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 74
    .line 75
    const-string p1, "ranking"

    .line 76
    .line 77
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->rankingServiceProvider:Lcom/narvii/services/RankingServiceProvider;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2, p1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 81
    .line 82
    const-string p1, "_myCommunityListReminderHelper"

    .line 83
    .line 84
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->myCommunityListReminderHelper:Lcom/narvii/services/MyCommunityListReminderHelper;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2, p1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 88
    .line 89
    const-string p1, "poll"

    .line 90
    .line 91
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->pollServiceProvider:Lcom/narvii/services/PollServiceProvider;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2, p1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 95
    .line 96
    const-string p1, "block"

    .line 97
    .line 98
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->communityBlockServiceProvider:Lcom/narvii/services/incubator/IncubatorBlockServiceProvider;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2, p1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 102
    .line 103
    const-string p1, "_updateDeviceTokenHelper"

    .line 104
    .line 105
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->updateDeviceTokenHelper:Lcom/narvii/pushservice/UpdateDeviceTokenHelper;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2, p1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 109
    .line 110
    const-string p1, "_enterCommunityHelper"

    .line 111
    .line 112
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->enterCommunityHelper:Lcom/narvii/services/EnterCommunityHelper;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p2, p1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 116
    .line 117
    const-string p1, "_communityStatusHelper"

    .line 118
    .line 119
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->communityStatusHelper:Lcom/narvii/services/CommunityStatusHelper;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p2, p1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 123
    .line 124
    const-string p1, "_communityActiveHelper"

    .line 125
    .line 126
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->communityActiveHelper:Lcom/narvii/community/CommunityActiveHelper;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p2, p1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 130
    .line 131
    const-string p1, "messageRead"

    .line 132
    .line 133
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->messageReadServiceProvider:Lcom/narvii/services/MessageReadServiceProvider;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p2, p1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 137
    .line 138
    const-string p1, "logging"

    .line 139
    .line 140
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->communityLoggingServiceProvider:Lcom/narvii/services/incubator/IncubatorCommunityLoggingServiceProvider;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p2, p1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 144
    .line 145
    const-string p1, "liveLayer"

    .line 146
    .line 147
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->incubatorLiveLayerCommunityServiceProvider:Lcom/narvii/services/IncubatorLiveLayerCommunityServiceProvider;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2, p1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 151
    .line 152
    const-string p1, "liveLayerHost"

    .line 153
    .line 154
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->liveLayerCommunityProvider:Lcom/narvii/services/incubator/IncubatorLiveLayerHostCommunityProvider;

    .line 155
    .line 156
    .line 157
    invoke-virtual {p2, p1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 158
    .line 159
    const-string p1, "cbbHost"

    .line 160
    .line 161
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->cbbHostCommunityProvider:Lcom/narvii/services/incubator/IncubatorCBBHostCommunityProvider;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p2, p1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 165
    .line 166
    const-string p1, "visitorBarHost"

    .line 167
    .line 168
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->visitorBarHostCommunityProvider:Lcom/narvii/services/incubator/IncubatorVisitorBarHostCommunityProvider;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p2, p1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 172
    .line 173
    const-string p1, "sticker"

    .line 174
    .line 175
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->stickerServiceProvider:Lcom/narvii/services/StickerServiceProvider;

    .line 176
    .line 177
    .line 178
    invoke-virtual {p2, p1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 179
    .line 180
    const-string p1, "chat"

    .line 181
    .line 182
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->chatServiceProvider:Lcom/narvii/services/ChatServiceProvider;

    .line 183
    .line 184
    .line 185
    invoke-virtual {p2, p1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 186
    .line 187
    new-instance p1, Lcom/narvii/chat/service/MyChatListServiceProvider;

    .line 188
    .line 189
    .line 190
    invoke-direct {p1}, Lcom/narvii/chat/service/MyChatListServiceProvider;-><init>()V

    .line 191
    .line 192
    const-string v0, "myChatList"

    .line 193
    .line 194
    .line 195
    invoke-virtual {p2, v0, p1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 196
    .line 197
    const-string p1, "checkIn"

    .line 198
    .line 199
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->checkInServiceProvider:Lcom/narvii/checkin/CheckInServiceProvider;

    .line 200
    .line 201
    .line 202
    invoke-virtual {p2, p1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 203
    return-void
.end method

.method public isCommunityLive(I)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->lives:Landroid/util/SparseIntArray;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    .line 6
    move-result p1

    .line 7
    .line 8
    if-lez p1, :cond_0

    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    return p1
.end method

.method protected onApplicationResume()V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/services/EnterCommunityHelper;->SOURCE:Lcom/narvii/util/statistics/TmpValue;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/util/statistics/TmpValue;->peek()Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    const-string v1, "Restored App"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVApplication;->onApplicationResume()V

    .line 17
    return-void
.end method

.method public onCreate()V
    .locals 1

    const-string v0, "SafeDK|SafeDK: App> Lcom/narvii/app/incubator/IncubatorApplication;->onCreate()V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    invoke-static {p0}, Lcom/safedk/android/internal/DexBridge;->appClassOnCreateBefore(Landroid/app/Application;)V

    invoke-static {p0}, Lcom/narvii/app/incubator/IncubatorApplication;->safedk_IncubatorApplication_onCreate_14dfe8e67294b4337f6b0625199ca86d(Lcom/narvii/app/incubator/IncubatorApplication;)V

    return-void
.end method

.method public peekService(ILjava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    move-object v1, v0

    .line 5
    goto :goto_0

    .line 6
    .line 7
    :cond_0
    iget-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->communityContextMap:Ljava/util/HashMap;

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    check-cast v1, Lcom/narvii/services/incubator/CommunityContext;

    .line 18
    .line 19
    :goto_0
    if-eqz p1, :cond_2

    .line 20
    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    iget-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->communityContextCache:Ljava/util/HashMap;

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 34
    .line 35
    if-nez v1, :cond_1

    .line 36
    goto :goto_1

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    check-cast v0, Lcom/narvii/services/incubator/CommunityContext;

    .line 43
    :goto_1
    move-object v1, v0

    .line 44
    .line 45
    :cond_2
    if-eqz v1, :cond_3

    .line 46
    .line 47
    iget-object p1, v1, Lcom/narvii/services/incubator/CommunityContext;->serviceManager:Lcom/narvii/services/ServiceManager;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p2}, Lcom/narvii/services/ServiceManager;->peekService(Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    move-result-object p1

    .line 52
    return-object p1

    .line 53
    .line 54
    .line 55
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVApplication;->peekService(ILjava/lang/String;)Ljava/lang/Object;

    .line 56
    move-result-object p1

    .line 57
    return-object p1
.end method

.method protected setupCrashlytics()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/logging/DetailLogging;->init()V

    .line 4
    return-void
.end method
