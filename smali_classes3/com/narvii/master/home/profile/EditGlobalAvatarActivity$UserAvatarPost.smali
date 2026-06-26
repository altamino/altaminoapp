.class public final Lcom/narvii/master/home/profile/EditGlobalAvatarActivity$UserAvatarPost;
.super Lcom/narvii/user/profile/post/UserProfilePost;
.source "EditGlobalAvatarActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/home/profile/EditGlobalAvatarActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UserAvatarPost"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEditGlobalAvatarActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditGlobalAvatarActivity.kt\ncom/narvii/master/home/profile/EditGlobalAvatarActivity$UserAvatarPost\n*L\n1#1,84:1\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/narvii/user/profile/post/UserProfilePost;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/model/User;)V
    .locals 1

    const-string v0, "user"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-direct {p0, p1}, Lcom/narvii/user/profile/post/UserProfilePost;-><init>(Lcom/narvii/model/User;)V

    return-void
.end method


# virtual methods
.method public postBody(Lcom/narvii/app/NVContext;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 2

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/user/profile/post/UserProfilePost;->icon:Ljava/lang/String;

    const-string v1, "icon"

    invoke-virtual {p1, v1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v0, "JacksonUtils.createObjec\u2026ply { put(\"icon\", icon) }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
