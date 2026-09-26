.class Lcom/narvii/headlines/HeadlineLaunchHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/headlines/HeadlineLaunchHelper$1;->this$0:Lcom/narvii/headlines/HeadlineLaunchHelper;

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/headlines/HeadlineLaunchHelper$1;->val$cid:I

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget v1, p0, Lcom/narvii/headlines/HeadlineLaunchHelper$1;->val$cid:I

    .line 7
    .line 8
    const-string v2, "drawerHost"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/narvii/app/NVApplication;->peekService(ILjava/lang/String;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/drawer/DrawerHost;

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iget v0, p0, Lcom/narvii/headlines/HeadlineLaunchHelper$1;->c:I

    .line 19
    .line 20
    add-int/lit8 v1, v0, 0x1

    .line 21
    .line 22
    iput v1, p0, Lcom/narvii/headlines/HeadlineLaunchHelper$1;->c:I

    .line 23
    const/4 v1, 0x5

    .line 24
    .line 25
    if-ge v0, v1, :cond_1

    .line 26
    .line 27
    const-wide/16 v0, 0xc8

    .line 28
    .line 29
    .line 30
    invoke-static {p0, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 31
    goto :goto_0

    .line 32
    .line 33
    .line 34
    :cond_0
    const-wide/32 v1, 0x927c0

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1, v2}, Lcom/narvii/drawer/DrawerHost;->refreshCommunityInfo(J)Z

    .line 38
    :cond_1
    :goto_0
    return-void
.end method
