.class Lcom/narvii/prompt/GlobalNoticePromptHelper$1;
.super Lcom/narvii/master/BottomDrawerViewHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/prompt/GlobalNoticePromptHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/amino/PromptShowListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/prompt/GlobalNoticePromptHelper;


# direct methods
.method constructor <init>(Lcom/narvii/prompt/GlobalNoticePromptHelper;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/prompt/GlobalNoticePromptHelper$1;->this$0:Lcom/narvii/prompt/GlobalNoticePromptHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/master/BottomDrawerViewHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method


# virtual methods
.method protected noticeEntryClass()Ljava/lang/Class;
    .locals 1

    const-class v0, Lcom/narvii/notice/AggregationNoticeFragment;

    return-object v0
.end method

.method protected preProcessNoticeEntryIntent(Landroid/content/Intent;)V
    .locals 2

    .line 1
    .line 2
    const-string v0, "targetCidTab"

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7
    return-void
.end method
