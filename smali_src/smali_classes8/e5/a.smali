.class public final synthetic Le5/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/h;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/google/firebase/components/c;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/google/firebase/components/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le5/a;->a:Ljava/lang/String;

    iput-object p2, p0, Le5/a;->b:Lcom/google/firebase/components/c;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/firebase/components/e;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le5/a;->a:Ljava/lang/String;

    iget-object v1, p0, Le5/a;->b:Lcom/google/firebase/components/c;

    invoke-static {v0, v1, p1}, Le5/b;->b(Ljava/lang/String;Lcom/google/firebase/components/c;Lcom/google/firebase/components/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
