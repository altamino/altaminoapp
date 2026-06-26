.class Lcom/narvii/account/LoginActivity$5;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/account/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/LoginActivity;


# direct methods
.method constructor <init>(Lcom/narvii/account/LoginActivity;)V
    .locals 0

    .line 792
    iput-object p1, p0, Lcom/narvii/account/LoginActivity$5;->this$0:Lcom/narvii/account/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 795
    iget-object v0, p0, Lcom/narvii/account/LoginActivity$5;->this$0:Lcom/narvii/account/LoginActivity;

    invoke-virtual {v0}, Lcom/narvii/account/LoginActivity;->updateViews()V

    return-void
.end method
