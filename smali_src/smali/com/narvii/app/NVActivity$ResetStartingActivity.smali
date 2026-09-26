.class Lcom/narvii/app/NVActivity$ResetStartingActivity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/app/NVActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResetStartingActivity"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/app/NVActivity;


# direct methods
.method private constructor <init>(Lcom/narvii/app/NVActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/app/NVActivity$ResetStartingActivity;->this$0:Lcom/narvii/app/NVActivity;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/app/NVActivity;Lcom/narvii/app/g;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/app/NVActivity$ResetStartingActivity;-><init>(Lcom/narvii/app/NVActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVActivity$ResetStartingActivity;->this$0:Lcom/narvii/app/NVActivity;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/narvii/app/NVActivity;->o(Lcom/narvii/app/NVActivity;Z)V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/app/NVActivity$ResetStartingActivity;->this$0:Lcom/narvii/app/NVActivity;

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/narvii/app/NVActivity;->l(Lcom/narvii/app/NVActivity;)Ljava/lang/Runnable;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    if-ne v0, p0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/app/NVActivity$ResetStartingActivity;->this$0:Lcom/narvii/app/NVActivity;

    .line 17
    const/4 v1, 0x0

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Lcom/narvii/app/NVActivity;->q(Lcom/narvii/app/NVActivity;Ljava/lang/Runnable;)V

    .line 21
    :cond_0
    return-void
.end method
