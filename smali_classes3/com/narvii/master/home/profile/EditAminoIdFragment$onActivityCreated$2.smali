.class final Lcom/narvii/master/home/profile/EditAminoIdFragment$onActivityCreated$2;
.super Ljava/lang/Object;
.source "EditAminoIdFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/profile/EditAminoIdFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/profile/EditAminoIdFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/home/profile/EditAminoIdFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment$onActivityCreated$2;->this$0:Lcom/narvii/master/home/profile/EditAminoIdFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 95
    iget-object p1, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment$onActivityCreated$2;->this$0:Lcom/narvii/master/home/profile/EditAminoIdFragment;

    invoke-static {p1}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->access$getEdtAminoId$p(Lcom/narvii/master/home/profile/EditAminoIdFragment;)Landroid/widget/EditText;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
