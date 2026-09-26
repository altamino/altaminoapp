.class final Lcom/google/accompanist/drawablepainter/a$b;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/accompanist/drawablepainter/a;-><init>(Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/a<",
        "Lcom/google/accompanist/drawablepainter/a$b$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/accompanist/drawablepainter/a;


# direct methods
.method constructor <init>(Lcom/google/accompanist/drawablepainter/a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/accompanist/drawablepainter/a$b;->this$0:Lcom/google/accompanist/drawablepainter/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()Lcom/google/accompanist/drawablepainter/a$b$a;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/google/accompanist/drawablepainter/a$b$a;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/accompanist/drawablepainter/a$b;->this$0:Lcom/google/accompanist/drawablepainter/a;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/google/accompanist/drawablepainter/a$b$a;-><init>(Lcom/google/accompanist/drawablepainter/a;)V

    .line 8
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/accompanist/drawablepainter/a$b;->b()Lcom/google/accompanist/drawablepainter/a$b$a;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
