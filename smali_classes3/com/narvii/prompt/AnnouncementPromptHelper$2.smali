.class Lcom/narvii/prompt/AnnouncementPromptHelper$2;
.super Ljava/lang/Object;
.source "AnnouncementPromptHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/prompt/AnnouncementPromptHelper;->onStatusChanged(ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/prompt/AnnouncementPromptHelper;


# direct methods
.method constructor <init>(Lcom/narvii/prompt/AnnouncementPromptHelper;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/narvii/prompt/AnnouncementPromptHelper$2;->this$0:Lcom/narvii/prompt/AnnouncementPromptHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 78
    iget-object p1, p0, Lcom/narvii/prompt/AnnouncementPromptHelper$2;->this$0:Lcom/narvii/prompt/AnnouncementPromptHelper;

    invoke-virtual {p1}, Lcom/narvii/prompt/PromptHelper;->whenNotBlocking()V

    return-void
.end method
