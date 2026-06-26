.class Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$6;
.super Ljava/lang/Object;
.source "SharedPhotoDetailFragment.java"

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

    .line 638
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$6;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    iput-object p2, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$6;->val$fapi:Lcom/narvii/util/http/ApiService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 641
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$6;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$6;->val$fapi:Lcom/narvii/util/http/ApiService;

    invoke-static {p1, p2, v0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->access$100(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;Ljava/lang/Integer;Lcom/narvii/util/http/ApiService;)V

    return-void
.end method
