.class public final synthetic Lz/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lz/b$a;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lz/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz/c;->a:Landroid/content/Context;

    iput-object p2, p0, Lz/c;->b:Lz/b$a;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lz/c;->a:Landroid/content/Context;

    iget-object v1, p0, Lz/c;->b:Lz/b$a;

    invoke-static {v0, v1, p1}, Lz/b$b;->a(Landroid/content/Context;Lz/b$a;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
