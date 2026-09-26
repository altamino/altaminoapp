.class public final synthetic Lcom/google/firebase/sessions/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf2/e;


# instance fields
.field public final synthetic a:Lcom/google/firebase/sessions/g;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/sessions/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/sessions/f;->a:Lcom/google/firebase/sessions/g;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/sessions/f;->a:Lcom/google/firebase/sessions/g;

    check-cast p1, Lcom/google/firebase/sessions/z;

    invoke-static {v0, p1}, Lcom/google/firebase/sessions/g;->b(Lcom/google/firebase/sessions/g;Lcom/google/firebase/sessions/z;)[B

    move-result-object p1

    return-object p1
.end method
