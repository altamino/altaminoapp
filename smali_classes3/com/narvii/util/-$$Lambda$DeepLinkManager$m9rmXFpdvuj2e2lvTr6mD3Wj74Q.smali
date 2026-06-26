.class public final synthetic Lcom/narvii/util/-$$Lambda$DeepLinkManager$m9rmXFpdvuj2e2lvTr6mD3Wj74Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field private final synthetic f$0:Z

.field private final synthetic f$1:Lcom/narvii/util/Callback;


# direct methods
.method public synthetic constructor <init>(ZLcom/narvii/util/Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/narvii/util/-$$Lambda$DeepLinkManager$m9rmXFpdvuj2e2lvTr6mD3Wj74Q;->f$0:Z

    iput-object p2, p0, Lcom/narvii/util/-$$Lambda$DeepLinkManager$m9rmXFpdvuj2e2lvTr6mD3Wj74Q;->f$1:Lcom/narvii/util/Callback;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 2

    iget-boolean v0, p0, Lcom/narvii/util/-$$Lambda$DeepLinkManager$m9rmXFpdvuj2e2lvTr6mD3Wj74Q;->f$0:Z

    iget-object v1, p0, Lcom/narvii/util/-$$Lambda$DeepLinkManager$m9rmXFpdvuj2e2lvTr6mD3Wj74Q;->f$1:Lcom/narvii/util/Callback;

    check-cast p1, Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;

    invoke-static {v0, v1, p1}, Lcom/narvii/util/DeepLinkManager;->lambda$handleDynamicLink$1(ZLcom/narvii/util/Callback;Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;)V

    return-void
.end method
