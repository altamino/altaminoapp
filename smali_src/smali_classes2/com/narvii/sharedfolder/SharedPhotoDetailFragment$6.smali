.class Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->vote(Ljava/lang/Integer;Lcom/narvii/util/http/ApiService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

.field final synthetic val$fapi:Lcom/narvii/util/http/ApiService;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;Lcom/narvii/util/http/ApiService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$6;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$6;->val$fapi:Lcom/narvii/util/http/ApiService;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$6;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    .line 3
    const/4 p2, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object p2

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$6;->val$fapi:Lcom/narvii/util/http/ApiService;

    .line 10
    .line 11
    .line 12
    invoke-static {p1, p2, v0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->A(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;Ljava/lang/Integer;Lcom/narvii/util/http/ApiService;)V

    .line 13
    return-void
.end method
