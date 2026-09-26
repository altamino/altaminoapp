.class public final synthetic Lcom/narvii/util/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/narvii/util/Callback;


# direct methods
.method public synthetic constructor <init>(ZLcom/narvii/util/Callback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/narvii/util/b;->a:Z

    iput-object p2, p0, Lcom/narvii/util/b;->b:Lcom/narvii/util/Callback;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/narvii/util/b;->a:Z

    iget-object v1, p0, Lcom/narvii/util/b;->b:Lcom/narvii/util/Callback;

    check-cast p1, Lh4/b;

    invoke-static {v0, v1, p1}, Lcom/narvii/util/DeepLinkManager;->c(ZLcom/narvii/util/Callback;Lh4/b;)V

    return-void
.end method
