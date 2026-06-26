.class Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3$1$1$1;
.super Ljava/lang/Object;
.source "MyUploadsSelectFragment.java"

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

    .line 158
    iput-object p1, p0, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3$1$1$1;->this$3:Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 0

    .line 161
    iget-object p1, p0, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3$1$1$1;->this$3:Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3$1$1;

    iget-object p1, p1, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3$1$1;->this$2:Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3$1;

    iget-object p1, p1, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3$1;->this$1:Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3;

    iget-object p1, p1, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3;->this$0:Lcom/narvii/sharedfolder/MyUploadsSelectFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 164
    :cond_0
    iget-object p1, p0, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3$1$1$1;->this$3:Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3$1$1;

    iget-object p1, p1, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3$1$1;->this$2:Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3$1;

    iget-object p1, p1, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3$1;->this$1:Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3;

    iget-object p1, p1, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3;->this$0:Lcom/narvii/sharedfolder/MyUploadsSelectFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
