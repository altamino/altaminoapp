.class Lcom/narvii/user/profile/UserProfileFragment$ProfileCommentAddAdapter;
.super Lcom/narvii/user/profile/adapter/CommentAddAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/user/profile/UserProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProfileCommentAddAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/user/profile/UserProfileFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/user/profile/UserProfileFragment;Lcom/narvii/app/NVContext;)V
    .locals 0
    .param p1    # Lcom/narvii/user/profile/UserProfileFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$ProfileCommentAddAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/user/profile/adapter/CommentAddAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method


# virtual methods
.method public onCommentNew()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$ProfileCommentAddAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->commentNew()V

    .line 8
    return-void
.end method
