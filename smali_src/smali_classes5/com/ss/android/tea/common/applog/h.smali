.class public Lcom/ss/android/tea/common/applog/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AMERICA:Lcom/ss/android/tea/common/applog/h;

.field public static final CHINA:Lcom/ss/android/tea/common/applog/h;

.field public static final SIG_ALI:Lcom/ss/android/tea/common/applog/h;


# instance fields
.field final mAbConfigUrl:Ljava/lang/String;

.field final mAppActiveUrl:Ljava/lang/String;

.field final mApplogFallbackUrl:Ljava/lang/String;

.field final mApplogSettingsFallbackUrl:Ljava/lang/String;

.field final mApplogSettingsUrl:Ljava/lang/String;

.field final mApplogTimelyUrl:Ljava/lang/String;

.field final mApplogURL:Ljava/lang/String;

.field final mDeviceRegisterUrl:[Ljava/lang/String;

.field final mUserProfileUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 1
    .line 2
    new-instance v10, Lcom/ss/android/tea/common/applog/h;

    .line 3
    .line 4
    const-string v1, "http://toblog.snssdk.com/service/2/app_log/"

    .line 5
    .line 6
    const-string v2, "http://rtlog.snssdk.com/service/2/app_log/"

    .line 7
    .line 8
    const-string v0, "http://toblog.snssdk.com/service/2/device_register/"

    .line 9
    .line 10
    .line 11
    filled-new-array {v0}, [Ljava/lang/String;

    .line 12
    move-result-object v3

    .line 13
    .line 14
    const-string v4, "http://ichannel.snssdk.com/service/2/app_alert_check/"

    .line 15
    .line 16
    const-string v5, "http://toblog.snssdk.com/service/2/log_settings/"

    .line 17
    .line 18
    const-string v6, "http://toblog.snssdk.com/service/2/app_log/"

    .line 19
    .line 20
    const-string v7, "http://toblog.snssdk.com/service/2/log_settings/"

    .line 21
    .line 22
    const-string v8, "http://"

    .line 23
    .line 24
    const-string v9, "http://toblog.snssdk.com/service/2/ab_test_config/"

    .line 25
    move-object v0, v10

    .line 26
    .line 27
    .line 28
    invoke-direct/range {v0 .. v9}, Lcom/ss/android/tea/common/applog/h;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    sput-object v10, Lcom/ss/android/tea/common/applog/h;->CHINA:Lcom/ss/android/tea/common/applog/h;

    .line 31
    .line 32
    new-instance v0, Lcom/ss/android/tea/common/applog/h;

    .line 33
    .line 34
    const-string v12, "http://log.isnssdk.com/service/2/app_log/"

    .line 35
    .line 36
    const-string v13, "http://rtlog.isnssdk.com/service/2/app_log/"

    .line 37
    .line 38
    const-string v1, "http://log.isnssdk.com/service/2/device_register/"

    .line 39
    .line 40
    .line 41
    filled-new-array {v1}, [Ljava/lang/String;

    .line 42
    move-result-object v14

    .line 43
    .line 44
    const-string v15, "http://ichannel.isnssdk.com/service/2/app_alert_check/"

    .line 45
    .line 46
    const-string v16, "http://log.isnssdk.com/service/2/log_settings/"

    .line 47
    .line 48
    const-string v17, "http://log.isnssdk.com/service/2/app_log/"

    .line 49
    .line 50
    const-string v18, "http://log.isnssdk.com/service/2/log_settings/"

    .line 51
    .line 52
    const-string v19, "http://"

    .line 53
    .line 54
    const-string v20, "http://log-tb.isnssdk.com/service/2/ab_test_config/"

    .line 55
    move-object v11, v0

    .line 56
    .line 57
    .line 58
    invoke-direct/range {v11 .. v20}, Lcom/ss/android/tea/common/applog/h;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    sput-object v0, Lcom/ss/android/tea/common/applog/h;->AMERICA:Lcom/ss/android/tea/common/applog/h;

    .line 61
    .line 62
    new-instance v0, Lcom/ss/android/tea/common/applog/h;

    .line 63
    .line 64
    const-string v2, "http://log.byteoversea.com/service/2/app_log/"

    .line 65
    .line 66
    const-string v3, "http://rtlog.byteoversea.com/service/2/app_log/"

    .line 67
    .line 68
    const-string v1, "http://toblog.byteoversea.com/service/2/device_register/"

    .line 69
    .line 70
    .line 71
    filled-new-array {v1}, [Ljava/lang/String;

    .line 72
    move-result-object v4

    .line 73
    .line 74
    const-string v5, "http://i.byteoversea.com/service/2/app_alert_check/"

    .line 75
    .line 76
    const-string v6, "http://log.byteoversea.com/service/2/log_settings/"

    .line 77
    .line 78
    const-string v7, "http://log.byteoversea.com/service/2/app_log/"

    .line 79
    .line 80
    const-string v8, "http://log.byteoversea.com/service/2/log_settings/"

    .line 81
    .line 82
    const-string v9, ""

    .line 83
    .line 84
    const-string v10, ""

    .line 85
    move-object v1, v0

    .line 86
    .line 87
    .line 88
    invoke-direct/range {v1 .. v10}, Lcom/ss/android/tea/common/applog/h;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    sput-object v0, Lcom/ss/android/tea/common/applog/h;->SIG_ALI:Lcom/ss/android/tea/common/applog/h;

    .line 91
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/ss/android/tea/common/applog/h;->mApplogURL:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p5, p0, Lcom/ss/android/tea/common/applog/h;->mApplogSettingsUrl:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/ss/android/tea/common/applog/h;->mApplogTimelyUrl:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/ss/android/tea/common/applog/h;->mAppActiveUrl:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p3, p0, Lcom/ss/android/tea/common/applog/h;->mDeviceRegisterUrl:[Ljava/lang/String;

    .line 14
    .line 15
    iput-object p6, p0, Lcom/ss/android/tea/common/applog/h;->mApplogFallbackUrl:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p7, p0, Lcom/ss/android/tea/common/applog/h;->mApplogSettingsFallbackUrl:Ljava/lang/String;

    .line 18
    .line 19
    iput-object p8, p0, Lcom/ss/android/tea/common/applog/h;->mUserProfileUrl:Ljava/lang/String;

    .line 20
    .line 21
    iput-object p9, p0, Lcom/ss/android/tea/common/applog/h;->mAbConfigUrl:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v1, ":\nmApplogURL : "

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/ss/android/tea/common/applog/h;->mApplogURL:Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v1, "\nmApplogTimelyUrl : "

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/ss/android/tea/common/applog/h;->mApplogTimelyUrl:Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v1, "\nmDeviceRegisterUrl : "

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/ss/android/tea/common/applog/h;->mDeviceRegisterUrl:[Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v1, "\nmAppActiveUrl : "

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    iget-object v1, p0, Lcom/ss/android/tea/common/applog/h;->mAppActiveUrl:Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v1, "\nmApplogSettingsUrl : "

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    iget-object v1, p0, Lcom/ss/android/tea/common/applog/h;->mApplogSettingsUrl:Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v1, "\n\nmApplogFallbackUrl : "

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    iget-object v1, p0, Lcom/ss/android/tea/common/applog/h;->mApplogFallbackUrl:Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v1, "\nmApplogSettingsFallbackUrl : "

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    iget-object v1, p0, Lcom/ss/android/tea/common/applog/h;->mApplogSettingsFallbackUrl:Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    const-string v1, "\nmUserProfileUrl : "

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    iget-object v1, p0, Lcom/ss/android/tea/common/applog/h;->mUserProfileUrl:Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string v1, "\nmAbConfigUrl : "

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    iget-object v1, p0, Lcom/ss/android/tea/common/applog/h;->mAbConfigUrl:Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    const-string v1, "\n\n\n\n"

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    move-result-object v0

    .line 112
    return-object v0
.end method
