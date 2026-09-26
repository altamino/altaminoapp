.class public final synthetic Lcom/narvii/pushservice/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic a:Lcom/narvii/pushservice/PushService;

.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:Lcom/narvii/util/Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/pushservice/PushService;ZZLcom/narvii/util/Callback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/pushservice/e;->a:Lcom/narvii/pushservice/PushService;

    iput-boolean p2, p0, Lcom/narvii/pushservice/e;->b:Z

    iput-boolean p3, p0, Lcom/narvii/pushservice/e;->c:Z

    iput-object p4, p0, Lcom/narvii/pushservice/e;->d:Lcom/narvii/util/Callback;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/narvii/pushservice/e;->a:Lcom/narvii/pushservice/PushService;

    iget-boolean v1, p0, Lcom/narvii/pushservice/e;->b:Z

    iget-boolean v2, p0, Lcom/narvii/pushservice/e;->c:Z

    iget-object v3, p0, Lcom/narvii/pushservice/e;->d:Lcom/narvii/util/Callback;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/narvii/pushservice/PushService;->a(Lcom/narvii/pushservice/PushService;ZZLcom/narvii/util/Callback;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
