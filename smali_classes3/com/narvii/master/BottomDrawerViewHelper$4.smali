.class Lcom/narvii/master/BottomDrawerViewHelper$4;
.super Ljava/lang/Object;
.source "BottomDrawerViewHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/BottomDrawerViewHelper;->showImportNotice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/BottomDrawerViewHelper;


# direct methods
.method constructor <init>(Lcom/narvii/master/BottomDrawerViewHelper;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/narvii/master/BottomDrawerViewHelper$4;->this$0:Lcom/narvii/master/BottomDrawerViewHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 266
    iget-object p1, p0, Lcom/narvii/master/BottomDrawerViewHelper$4;->this$0:Lcom/narvii/master/BottomDrawerViewHelper;

    invoke-virtual {p1}, Lcom/narvii/master/BottomDrawerViewHelper;->hideBottomLayout()V

    .line 267
    iget-object p1, p0, Lcom/narvii/master/BottomDrawerViewHelper$4;->this$0:Lcom/narvii/master/BottomDrawerViewHelper;

    invoke-virtual {p1}, Lcom/narvii/master/BottomDrawerViewHelper;->noticeEntryClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "Source"

    const-string v1, "Toast"

    .line 268
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    iget-object v0, p0, Lcom/narvii/master/BottomDrawerViewHelper$4;->this$0:Lcom/narvii/master/BottomDrawerViewHelper;

    invoke-virtual {v0, p1}, Lcom/narvii/master/BottomDrawerViewHelper;->preProcessNoticeEntryIntent(Landroid/content/Intent;)V

    .line 270
    iget-object v0, p0, Lcom/narvii/master/BottomDrawerViewHelper$4;->this$0:Lcom/narvii/master/BottomDrawerViewHelper;

    invoke-static {v0, p1}, Lcom/narvii/master/BottomDrawerViewHelper;->access$000(Lcom/narvii/master/BottomDrawerViewHelper;Landroid/content/Intent;)V

    return-void
.end method
