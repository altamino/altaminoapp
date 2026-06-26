.class public final Lcom/narvii/master/home/profile/EditUsernameFragment$Companion;
.super Ljava/lang/Object;
.source "EditUsernameFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/home/profile/EditUsernameFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEditUsernameFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditUsernameFragment.kt\ncom/narvii/master/home/profile/EditUsernameFragment$Companion\n*L\n1#1,135:1\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditUsernameFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final intent(Lcom/narvii/model/User;)Landroid/content/Intent;
    .locals 2

    const-string v0, "user"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    const-class v0, Lcom/narvii/master/home/profile/EditUsernameFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 40
    new-instance v1, Lcom/narvii/master/home/profile/EditUsernameFragment$UsernamePost;

    invoke-direct {v1, p1}, Lcom/narvii/master/home/profile/EditUsernameFragment$UsernamePost;-><init>(Lcom/narvii/model/User;)V

    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "post"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "FragmentWrapperActivity.\u2026amePost(user)))\n        }"

    .line 39
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
