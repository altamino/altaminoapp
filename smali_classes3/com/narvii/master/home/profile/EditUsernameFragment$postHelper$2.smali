.class final Lcom/narvii/master/home/profile/EditUsernameFragment$postHelper$2;
.super Lkotlin/jvm/internal/Lambda;
.source "EditUsernameFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/profile/EditUsernameFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/narvii/post/PostHelper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/profile/EditUsernameFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/home/profile/EditUsernameFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/master/home/profile/EditUsernameFragment$postHelper$2;->this$0:Lcom/narvii/master/home/profile/EditUsernameFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/narvii/post/PostHelper;
    .locals 2

    .line 34
    new-instance v0, Lcom/narvii/post/PostHelper;

    iget-object v1, p0, Lcom/narvii/master/home/profile/EditUsernameFragment$postHelper$2;->this$0:Lcom/narvii/master/home/profile/EditUsernameFragment;

    invoke-direct {v0, v1}, Lcom/narvii/post/PostHelper;-><init>(Lcom/narvii/app/NVContext;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/EditUsernameFragment$postHelper$2;->invoke()Lcom/narvii/post/PostHelper;

    move-result-object v0

    return-object v0
.end method
