.class public final synthetic Lk2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lk2/c;

.field public final synthetic b:Lcom/google/android/datatransport/runtime/p;

.field public final synthetic c:Lf2/h;

.field public final synthetic d:Lcom/google/android/datatransport/runtime/i;


# direct methods
.method public synthetic constructor <init>(Lk2/c;Lcom/google/android/datatransport/runtime/p;Lf2/h;Lcom/google/android/datatransport/runtime/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk2/a;->a:Lk2/c;

    iput-object p2, p0, Lk2/a;->b:Lcom/google/android/datatransport/runtime/p;

    iput-object p3, p0, Lk2/a;->c:Lf2/h;

    iput-object p4, p0, Lk2/a;->d:Lcom/google/android/datatransport/runtime/i;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk2/a;->a:Lk2/c;

    iget-object v1, p0, Lk2/a;->b:Lcom/google/android/datatransport/runtime/p;

    iget-object v2, p0, Lk2/a;->c:Lf2/h;

    iget-object v3, p0, Lk2/a;->d:Lcom/google/android/datatransport/runtime/i;

    invoke-static {v0, v1, v2, v3}, Lk2/c;->b(Lk2/c;Lcom/google/android/datatransport/runtime/p;Lf2/h;Lcom/google/android/datatransport/runtime/i;)V

    return-void
.end method
