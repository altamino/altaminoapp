.class public final Lcom/narvii/chat/detail/ThreadAnnouncementFragment$Companion;
.super Ljava/lang/Object;
.source "ThreadAnnouncementFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/detail/ThreadAnnouncementFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nThreadAnnouncementFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ThreadAnnouncementFragment.kt\ncom/narvii/chat/detail/ThreadAnnouncementFragment$Companion\n*L\n1#1,178:1\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final intent(Lcom/narvii/model/ChatThread;)Landroid/content/Intent;
    .locals 3

    const-string v0, "chatThread"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    const-class v1, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;

    invoke-static {v1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 59
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    iget p1, p1, Lcom/narvii/model/ChatThread;->ndcId:I

    const-string v0, "__communityId"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "FragmentWrapperActivity.\u2026atThread.ndcId)\n        }"

    .line 58
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method
