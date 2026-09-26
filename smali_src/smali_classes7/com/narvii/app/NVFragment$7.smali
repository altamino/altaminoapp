.class Lcom/narvii/app/NVFragment$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/app/NVFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/app/NVFragment;


# direct methods
.method constructor <init>(Lcom/narvii/app/NVFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/app/NVFragment$7;->this$0:Lcom/narvii/app/NVFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVFragment$7;->this$0:Lcom/narvii/app/NVFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/app/NVFragment;->j(Lcom/narvii/app/NVFragment;)I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x3

    .line 8
    .line 9
    if-lt v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/app/NVFragment$7;->this$0:Lcom/narvii/app/NVFragment;

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/narvii/app/NVFragment;->i(Lcom/narvii/app/NVFragment;)Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    const/4 v0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    .line 22
    :goto_0
    iget-object v1, p0, Lcom/narvii/app/NVFragment$7;->this$0:Lcom/narvii/app/NVFragment;

    .line 23
    .line 24
    .line 25
    invoke-static {v1}, Lcom/narvii/app/NVFragment;->h(Lcom/narvii/app/NVFragment;)Z

    .line 26
    move-result v1

    .line 27
    .line 28
    if-eq v1, v0, :cond_1

    .line 29
    .line 30
    iget-object v1, p0, Lcom/narvii/app/NVFragment$7;->this$0:Lcom/narvii/app/NVFragment;

    .line 31
    .line 32
    .line 33
    invoke-static {v1, v0}, Lcom/narvii/app/NVFragment;->l(Lcom/narvii/app/NVFragment;Z)V

    .line 34
    .line 35
    iget-object v0, p0, Lcom/narvii/app/NVFragment$7;->this$0:Lcom/narvii/app/NVFragment;

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Lcom/narvii/app/NVFragment;->h(Lcom/narvii/app/NVFragment;)Z

    .line 39
    move-result v1

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->onActiveChanged(Z)V

    .line 43
    :cond_1
    return-void
.end method
