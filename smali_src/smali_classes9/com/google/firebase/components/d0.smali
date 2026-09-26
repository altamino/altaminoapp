.class public final synthetic Lcom/google/firebase/components/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo4/a$a;


# instance fields
.field public final synthetic a:Lo4/a$a;

.field public final synthetic b:Lo4/a$a;


# direct methods
.method public synthetic constructor <init>(Lo4/a$a;Lo4/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/components/d0;->a:Lo4/a$a;

    iput-object p2, p0, Lcom/google/firebase/components/d0;->b:Lo4/a$a;

    return-void
.end method


# virtual methods
.method public final a(Lo4/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/components/d0;->a:Lo4/a$a;

    iget-object v1, p0, Lcom/google/firebase/components/d0;->b:Lo4/a$a;

    invoke-static {v0, v1, p1}, Lcom/google/firebase/components/e0;->d(Lo4/a$a;Lo4/a$a;Lo4/b;)V

    return-void
.end method
