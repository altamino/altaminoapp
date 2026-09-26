.class public final Lcom/narvii/master/home/profile/EditUsernameFragment$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/home/profile/EditUsernameFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditUsernameFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final intent(Lcom/narvii/model/User;)Landroid/content/Intent;
    .locals 2
    .param p1    # Lcom/narvii/model/User;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "user"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-class v0, Lcom/narvii/master/home/profile/EditUsernameFragment;

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    new-instance v1, Lcom/narvii/master/home/profile/EditUsernameFragment$UsernamePost;

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, p1}, Lcom/narvii/master/home/profile/EditUsernameFragment$UsernamePost;-><init>(Lcom/narvii/model/User;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    const-string v1, "post"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    .line 27
    const-string p1, "apply(...)"

    .line 28
    .line 29
    .line 30
    invoke-static {v0, p1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    return-object v0
.end method
