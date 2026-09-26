.class Lcom/narvii/account/CommunityPushSettingFragment$2$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/CommunityPushSettingFragment$2;->call(Lcom/narvii/list/prefs/PrefsToggle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/account/CommunityPushSettingFragment$2;

.field final synthetic val$offItem:[I

.field final synthetic val$res:Lcom/narvii/master/setting/CommunityPushResponse;


# direct methods
.method constructor <init>(Lcom/narvii/account/CommunityPushSettingFragment$2;Lcom/narvii/master/setting/CommunityPushResponse;[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/account/CommunityPushSettingFragment$2$3;->this$1:Lcom/narvii/account/CommunityPushSettingFragment$2;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/account/CommunityPushSettingFragment$2$3;->val$res:Lcom/narvii/master/setting/CommunityPushResponse;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/account/CommunityPushSettingFragment$2$3;->val$offItem:[I

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/account/CommunityPushSettingFragment$2$3;->this$1:Lcom/narvii/account/CommunityPushSettingFragment$2;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/account/CommunityPushSettingFragment$2;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/account/CommunityPushSettingFragment$2$3;->val$res:Lcom/narvii/master/setting/CommunityPushResponse;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/account/CommunityPushSettingFragment$2$3;->val$offItem:[I

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    aget v1, v1, v2

    .line 12
    .line 13
    .line 14
    invoke-static {p1, v0, v1}, Lcom/narvii/account/CommunityPushSettingFragment;->u(Lcom/narvii/account/CommunityPushSettingFragment;Lcom/narvii/master/setting/CommunityPushResponse;I)V

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/account/CommunityPushSettingFragment$2$3;->val$offItem:[I

    .line 17
    .line 18
    aget p1, p1, v2

    .line 19
    const/4 v0, 0x1

    .line 20
    .line 21
    if-ne p1, v0, :cond_0

    .line 22
    .line 23
    const-string p1, "Turn off all notifications"

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x3

    .line 26
    .line 27
    if-ne p1, v0, :cond_1

    .line 28
    .line 29
    const-string p1, "Turn of broadcast notifications"

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 p1, 0x0

    .line 32
    .line 33
    :goto_0
    if-eqz p1, :cond_2

    .line 34
    .line 35
    iget-object v0, p0, Lcom/narvii/account/CommunityPushSettingFragment$2$3;->this$1:Lcom/narvii/account/CommunityPushSettingFragment$2;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/narvii/account/CommunityPushSettingFragment$2;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    .line 38
    .line 39
    const-string v1, "statistics"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    check-cast v0, Lcom/narvii/util/statistics/StatisticsService;

    .line 46
    .line 47
    .line 48
    invoke-interface {v0, p1}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    iget-object v1, p0, Lcom/narvii/account/CommunityPushSettingFragment$2$3;->this$1:Lcom/narvii/account/CommunityPushSettingFragment$2;

    .line 52
    .line 53
    iget-object v1, v1, Lcom/narvii/account/CommunityPushSettingFragment$2;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    .line 54
    .line 55
    const-string v2, "Source"

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    move-result-object v1

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string p1, " Total"

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object p1

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, p1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 84
    :cond_2
    return-void
.end method
