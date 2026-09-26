.class Lcom/narvii/sharedfolder/SharedFolderHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/SharedFolderHelper;->showUploadChooseSourceDialog(Landroid/content/Context;Ljava/lang/String;Lcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/sharedfolder/SharedFolderHelper;

.field final synthetic val$albumId:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$uploadPhotoCallback:Lcom/narvii/util/Callback;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/SharedFolderHelper;Lcom/narvii/util/Callback;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$1;->this$0:Lcom/narvii/sharedfolder/SharedFolderHelper;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$1;->val$uploadPhotoCallback:Lcom/narvii/util/Callback;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$1;->val$albumId:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$1;->val$context:Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroid/content/Context;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1
    .line 2
    if-eqz p2, :cond_2

    .line 3
    const/4 p1, 0x1

    .line 4
    .line 5
    if-eq p2, p1, :cond_1

    .line 6
    const/4 p1, 0x2

    .line 7
    .line 8
    if-eq p2, p1, :cond_0

    .line 9
    const/4 p1, 0x0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$1;->this$0:Lcom/narvii/sharedfolder/SharedFolderHelper;

    .line 13
    .line 14
    new-instance p2, Lcom/narvii/sharedfolder/SharedFolderHelper$1$1;

    .line 15
    .line 16
    .line 17
    invoke-direct {p2, p0}, Lcom/narvii/sharedfolder/SharedFolderHelper$1$1;-><init>(Lcom/narvii/sharedfolder/SharedFolderHelper$1;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2}, Lcom/narvii/sharedfolder/SharedFolderHelper;->checkAlbumManageEligible(Lcom/narvii/util/Callback;)V

    .line 21
    .line 22
    const-string p1, "Other Shared Album"

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_1
    const-class p1, Lcom/narvii/sharedfolder/MyUploadsSelectFragment;

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    const-string p2, "selectMode"

    .line 32
    .line 33
    const-string v0, "pickUpload"

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    const-string/jumbo p2, "toAlbumId"

    .line 40
    .line 41
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$1;->val$albumId:Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    .line 46
    iget-object p2, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$1;->val$context:Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    invoke-static {p2, p1}, Lcom/narvii/sharedfolder/SharedFolderHelper$1;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 50
    .line 51
    const-string p1, "My Uploads"

    .line 52
    goto :goto_0

    .line 53
    .line 54
    :cond_2
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$1;->this$0:Lcom/narvii/sharedfolder/SharedFolderHelper;

    .line 55
    .line 56
    iget-object p2, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$1;->val$uploadPhotoCallback:Lcom/narvii/util/Callback;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, p2}, Lcom/narvii/sharedfolder/SharedFolderHelper;->checkUploadPhotoEligible(Lcom/narvii/util/Callback;)V

    .line 60
    .line 61
    const-string p1, "Upload New Photos"

    .line 62
    .line 63
    :goto_0
    iget-object p2, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$1;->this$0:Lcom/narvii/sharedfolder/SharedFolderHelper;

    .line 64
    .line 65
    iget-object p2, p2, Lcom/narvii/sharedfolder/SharedFolderHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 66
    .line 67
    const-string v0, "statistics"

    .line 68
    .line 69
    .line 70
    invoke-interface {p2, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    move-result-object p2

    .line 72
    .line 73
    check-cast p2, Lcom/narvii/util/statistics/StatisticsService;

    .line 74
    .line 75
    const-string v0, "Add Shared Folder Media"

    .line 76
    .line 77
    .line 78
    invoke-interface {p2, v0}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 79
    move-result-object p2

    .line 80
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$1;->this$0:Lcom/narvii/sharedfolder/SharedFolderHelper;

    .line 87
    .line 88
    iget-object v1, v1, Lcom/narvii/sharedfolder/SharedFolderHelper;->source:Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$1;->this$0:Lcom/narvii/sharedfolder/SharedFolderHelper;

    .line 94
    .line 95
    iget-object v1, v1, Lcom/narvii/sharedfolder/SharedFolderHelper;->sourceExtra:Ljava/lang/String;

    .line 96
    .line 97
    const-string v2, ""

    .line 98
    .line 99
    if-nez v1, :cond_3

    .line 100
    move-object v1, v2

    .line 101
    .line 102
    .line 103
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    move-result-object v0

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 111
    move-result-object p2

    .line 112
    .line 113
    if-eqz p1, :cond_4

    .line 114
    goto :goto_1

    .line 115
    :cond_4
    move-object p1, v2

    .line 116
    .line 117
    :goto_1
    const-string v0, "From"

    .line 118
    .line 119
    .line 120
    invoke-virtual {p2, v0, p1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 121
    move-result-object p1

    .line 122
    .line 123
    const-string p2, "Add Shared Folder Media Total"

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 127
    return-void
.end method
