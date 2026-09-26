.class Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3$1$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3$1$1;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3$1$1;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3$1$1$1;->this$3:Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3$1$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3$1$1$1;->this$3:Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3$1$1;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3$1$1;->this$2:Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3$1;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3$1;->this$1:Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3;->this$0:Lcom/narvii/sharedfolder/MyUploadsSelectFragment;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    return-void

    .line 16
    .line 17
    :cond_0
    iget-object p1, p0, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3$1$1$1;->this$3:Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3$1$1;

    .line 18
    .line 19
    iget-object p1, p1, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3$1$1;->this$2:Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3$1;

    .line 20
    .line 21
    iget-object p1, p1, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3$1;->this$1:Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3;->this$0:Lcom/narvii/sharedfolder/MyUploadsSelectFragment;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 31
    return-void
.end method
