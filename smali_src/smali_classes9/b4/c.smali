.class public Lb4/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb4/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public a(Lb4/a;)V
    .locals 1
    .param p1    # Lb4/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/g;->f()Lcom/google/firebase/crashlytics/internal/g;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    const-string v0, "Could not register handler for breadcrumbs events."

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/google/firebase/crashlytics/internal/g;->b(Ljava/lang/String;)V

    .line 10
    return-void
.end method
