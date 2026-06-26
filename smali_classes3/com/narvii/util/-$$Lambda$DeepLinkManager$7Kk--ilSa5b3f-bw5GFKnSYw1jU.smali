.class public final synthetic Lcom/narvii/util/-$$Lambda$DeepLinkManager$7Kk--ilSa5b3f-bw5GFKnSYw1jU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field private final synthetic f$0:Lcom/narvii/util/Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/util/Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/util/-$$Lambda$DeepLinkManager$7Kk--ilSa5b3f-bw5GFKnSYw1jU;->f$0:Lcom/narvii/util/Callback;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/narvii/util/-$$Lambda$DeepLinkManager$7Kk--ilSa5b3f-bw5GFKnSYw1jU;->f$0:Lcom/narvii/util/Callback;

    invoke-static {v0, p1}, Lcom/narvii/util/DeepLinkManager;->lambda$handleDynamicLink$2(Lcom/narvii/util/Callback;Ljava/lang/Exception;)V

    return-void
.end method
