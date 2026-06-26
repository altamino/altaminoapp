.class Lcom/narvii/app/NVActivity$ResetStartingActivity;
.super Ljava/lang/Object;
.source "NVActivity.java"

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

    .line 1600
    iput-object p1, p0, Lcom/narvii/app/NVActivity$ResetStartingActivity;->this$0:Lcom/narvii/app/NVActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/app/NVActivity;Lcom/narvii/app/NVActivity$1;)V
    .locals 0

    .line 1600
    invoke-direct {p0, p1}, Lcom/narvii/app/NVActivity$ResetStartingActivity;-><init>(Lcom/narvii/app/NVActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1603
    iget-object v0, p0, Lcom/narvii/app/NVActivity$ResetStartingActivity;->this$0:Lcom/narvii/app/NVActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/narvii/app/NVActivity;->access$202(Lcom/narvii/app/NVActivity;Z)Z

    .line 1604
    iget-object v0, p0, Lcom/narvii/app/NVActivity$ResetStartingActivity;->this$0:Lcom/narvii/app/NVActivity;

    invoke-static {v0}, Lcom/narvii/app/NVActivity;->access$300(Lcom/narvii/app/NVActivity;)Ljava/lang/Runnable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 1605
    iget-object v0, p0, Lcom/narvii/app/NVActivity$ResetStartingActivity;->this$0:Lcom/narvii/app/NVActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/narvii/app/NVActivity;->access$302(Lcom/narvii/app/NVActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_0
    return-void
.end method
