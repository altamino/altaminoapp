.class Lcom/narvii/master/BottomDrawerViewHelper$4;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/BottomDrawerViewHelper$4;->this$0:Lcom/narvii/master/BottomDrawerViewHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/master/BottomDrawerViewHelper$4;->this$0:Lcom/narvii/master/BottomDrawerViewHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/master/BottomDrawerViewHelper;->hideBottomLayout()V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/master/BottomDrawerViewHelper$4;->this$0:Lcom/narvii/master/BottomDrawerViewHelper;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/narvii/master/BottomDrawerViewHelper;->noticeEntryClass()Ljava/lang/Class;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    const-string v0, "Source"

    .line 18
    .line 19
    const-string v1, "Toast"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/master/BottomDrawerViewHelper$4;->this$0:Lcom/narvii/master/BottomDrawerViewHelper;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Lcom/narvii/master/BottomDrawerViewHelper;->preProcessNoticeEntryIntent(Landroid/content/Intent;)V

    .line 28
    .line 29
    iget-object v0, p0, Lcom/narvii/master/BottomDrawerViewHelper$4;->this$0:Lcom/narvii/master/BottomDrawerViewHelper;

    .line 30
    .line 31
    .line 32
    invoke-static {v0, p1}, Lcom/narvii/master/BottomDrawerViewHelper;->d(Lcom/narvii/master/BottomDrawerViewHelper;Landroid/content/Intent;)V

    .line 33
    return-void
.end method
