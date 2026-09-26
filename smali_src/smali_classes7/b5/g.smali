.class public final synthetic Lb5/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/h;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lb5/h$a;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lb5/h$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb5/g;->a:Ljava/lang/String;

    iput-object p2, p0, Lb5/g;->b:Lb5/h$a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/firebase/components/e;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lb5/g;->a:Ljava/lang/String;

    iget-object v1, p0, Lb5/g;->b:Lb5/h$a;

    invoke-static {v0, v1, p1}, Lb5/h;->a(Ljava/lang/String;Lb5/h$a;Lcom/google/firebase/components/e;)Lb5/f;

    move-result-object p1

    return-object p1
.end method
