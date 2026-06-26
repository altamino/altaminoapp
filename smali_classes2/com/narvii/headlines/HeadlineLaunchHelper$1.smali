.class Lcom/narvii/headlines/HeadlineLaunchHelper$1;
.super Ljava/lang/Object;
.source "HeadlineLaunchHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/headlines/HeadlineLaunchHelper;->prepareEnterCommunity(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field c:I

.field final synthetic this$0:Lcom/narvii/headlines/HeadlineLaunchHelper;

.field final synthetic val$cid:I


# direct methods
.method constructor <init>(Lcom/narvii/headlines/HeadlineLaunchHelper;I)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/narvii/headlines/HeadlineLaunchHelper$1;->this$0:Lcom/narvii/headlines/HeadlineLaunchHelper;

    iput p2, p0, Lcom/narvii/headlines/HeadlineLaunchHelper$1;->val$cid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 137
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    iget v1, p0, Lcom/narvii/headlines/HeadlineLaunchHelper$1;->val$cid:I

    const-string v2, "drawerHost"

    invoke-virtual {v0, v1, v2}, Lcom/narvii/app/NVApplication;->peekService(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/drawer/DrawerHost;

    if-nez v0, :cond_0

    .line 139
    iget v0, p0, Lcom/narvii/headlines/HeadlineLaunchHelper$1;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/narvii/headlines/HeadlineLaunchHelper$1;->c:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    const-wide/16 v0, 0xc8

    .line 140
    invoke-static {p0, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_0
    const-wide/32 v1, 0x927c0

    .line 143
    invoke-virtual {v0, v1, v2}, Lcom/narvii/drawer/DrawerHost;->refreshCommunityInfo(J)Z

    :cond_1
    :goto_0
    return-void
.end method
