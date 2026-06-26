.class final Lcom/narvii/scene/poll/ScenePollPostFragment$isModified$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ScenePollPostFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/poll/ScenePollPostFragment;->isModified()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/narvii/model/PollOption;",
        "Lcom/narvii/model/PollOption;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/narvii/scene/poll/ScenePollPostFragment$isModified$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/narvii/scene/poll/ScenePollPostFragment$isModified$2;

    invoke-direct {v0}, Lcom/narvii/scene/poll/ScenePollPostFragment$isModified$2;-><init>()V

    sput-object v0, Lcom/narvii/scene/poll/ScenePollPostFragment$isModified$2;->INSTANCE:Lcom/narvii/scene/poll/ScenePollPostFragment$isModified$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 35
    check-cast p1, Lcom/narvii/model/PollOption;

    check-cast p2, Lcom/narvii/model/PollOption;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/scene/poll/ScenePollPostFragment$isModified$2;->invoke(Lcom/narvii/model/PollOption;Lcom/narvii/model/PollOption;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lcom/narvii/model/PollOption;Lcom/narvii/model/PollOption;)Z
    .locals 1

    const-string v0, "opt1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "opt2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    invoke-virtual {p1, p2}, Lcom/narvii/model/PollOption;->isSame(Lcom/narvii/model/PollOption;)Z

    move-result p1

    return p1
.end method
