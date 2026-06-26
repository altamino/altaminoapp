.class Lcom/narvii/user/title/EditUserTitleFragment$3;
.super Ljava/lang/Object;
.source "EditUserTitleFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/title/EditUserTitleFragment;->onBackPressed(Lcom/narvii/app/NVActivity;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/user/title/EditUserTitleFragment;

.field final synthetic val$activity:Lcom/narvii/app/NVActivity;


# direct methods
.method constructor <init>(Lcom/narvii/user/title/EditUserTitleFragment;Lcom/narvii/app/NVActivity;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment$3;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    iput-object p2, p0, Lcom/narvii/user/title/EditUserTitleFragment$3;->val$activity:Lcom/narvii/app/NVActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p2, :cond_0

    goto :goto_0

    .line 227
    :cond_0
    iget-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment$3;->val$activity:Lcom/narvii/app/NVActivity;

    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->finish()V

    :goto_0
    return-void
.end method
