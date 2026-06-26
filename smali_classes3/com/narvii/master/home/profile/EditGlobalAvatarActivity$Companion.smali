.class public final Lcom/narvii/master/home/profile/EditGlobalAvatarActivity$Companion;
.super Ljava/lang/Object;
.source "EditGlobalAvatarActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/home/profile/EditGlobalAvatarActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEditGlobalAvatarActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditGlobalAvatarActivity.kt\ncom/narvii/master/home/profile/EditGlobalAvatarActivity$Companion\n*L\n1#1,84:1\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditGlobalAvatarActivity$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final intent(Landroid/content/Context;Lcom/narvii/model/User;)Landroid/content/Intent;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "user"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/narvii/master/home/profile/EditGlobalAvatarActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 28
    new-instance p1, Lcom/narvii/master/home/profile/EditGlobalAvatarActivity$UserAvatarPost;

    invoke-direct {p1, p2}, Lcom/narvii/master/home/profile/EditGlobalAvatarActivity$UserAvatarPost;-><init>(Lcom/narvii/model/User;)V

    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "post"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    invoke-virtual {p2}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object p1

    const-string p2, "uid"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method
