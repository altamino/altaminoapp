.class Lcom/narvii/account/CodeVerifyFragment$1;
.super Ljava/lang/Object;
.source "CodeVerifyFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/account/CodeVerifyFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/CodeVerifyFragment;


# direct methods
.method constructor <init>(Lcom/narvii/account/CodeVerifyFragment;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/narvii/account/CodeVerifyFragment$1;->this$0:Lcom/narvii/account/CodeVerifyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/narvii/account/CodeVerifyFragment$1;->this$0:Lcom/narvii/account/CodeVerifyFragment;

    invoke-static {v0}, Lcom/narvii/account/CodeVerifyFragment;->access$000(Lcom/narvii/account/CodeVerifyFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
