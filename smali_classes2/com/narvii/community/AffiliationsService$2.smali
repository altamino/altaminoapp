.class Lcom/narvii/community/AffiliationsService$2;
.super Ljava/lang/Object;
.source "AffiliationsService.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/community/AffiliationsService;->op(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/util/Callback<",
        "Ljava/util/Collection<",
        "Ljava/lang/Integer;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/community/AffiliationsService;

.field final synthetic val$nl:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/narvii/community/AffiliationsService;Ljava/util/List;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/narvii/community/AffiliationsService$2;->this$0:Lcom/narvii/community/AffiliationsService;

    iput-object p2, p0, Lcom/narvii/community/AffiliationsService$2;->val$nl:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/util/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/Callback<",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/narvii/community/AffiliationsService$2;->val$nl:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 131
    check-cast p1, Lcom/narvii/util/Callback;

    invoke-virtual {p0, p1}, Lcom/narvii/community/AffiliationsService$2;->call(Lcom/narvii/util/Callback;)V

    return-void
.end method
