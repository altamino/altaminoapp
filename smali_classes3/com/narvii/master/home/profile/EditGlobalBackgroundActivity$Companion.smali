.class public final Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity$Companion;
.super Ljava/lang/Object;
.source "EditGlobalBackgroundActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEditGlobalBackgroundActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditGlobalBackgroundActivity.kt\ncom/narvii/master/home/profile/EditGlobalBackgroundActivity$Companion\n*L\n1#1,95:1\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final intent(Landroid/content/Context;Lcom/narvii/model/User;Ljava/util/List;)Landroid/content/Intent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/narvii/model/User;",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/model/Media;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "user"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "medias"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 29
    new-instance p1, Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity$UserBackgroundPost;

    invoke-direct {p1, p2}, Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity$UserBackgroundPost;-><init>(Lcom/narvii/model/User;)V

    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "post"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    invoke-virtual {p2}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object p1

    const-string p2, "uid"

    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    invoke-static {p3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v1
.end method
