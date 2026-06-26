.class final Lcom/narvii/master/home/profile/GlobalProfileFragment$onNotification$2;
.super Lkotlin/jvm/internal/Lambda;
.source "GlobalProfileFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/profile/GlobalProfileFragment;->onNotification(Lcom/narvii/notification/Notification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Object;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/narvii/master/home/profile/GlobalProfileFragment$onNotification$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/narvii/master/home/profile/GlobalProfileFragment$onNotification$2;

    invoke-direct {v0}, Lcom/narvii/master/home/profile/GlobalProfileFragment$onNotification$2;-><init>()V

    sput-object v0, Lcom/narvii/master/home/profile/GlobalProfileFragment$onNotification$2;->INSTANCE:Lcom/narvii/master/home/profile/GlobalProfileFragment$onNotification$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 78
    invoke-virtual {p0, p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment$onNotification$2;->invoke(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)Z
    .locals 3

    const-string v0, "obj"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 612
    instance-of v0, p1, Lcom/narvii/model/Blog;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    check-cast p1, Lcom/narvii/model/Blog;

    iget v0, p1, Lcom/narvii/model/Blog;->type:I

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    iget v0, p1, Lcom/narvii/model/Blog;->publishToGlobal:I

    if-eq v0, v1, :cond_1

    iget p1, p1, Lcom/narvii/model/Feed;->ndcId:I

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method
