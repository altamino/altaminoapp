.class final Lkotlin/io/h$b$b;
.super Lkotlin/io/h$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/io/h$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFileTreeWalk.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileTreeWalk.kt\nkotlin/io/FileTreeWalk$FileTreeWalkIterator$SingleFileState\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,273:1\n1#2:274\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lkotlin/io/h$b;

.field private visited:Z


# direct methods
.method public constructor <init>(Lkotlin/io/h$b;Ljava/io/File;)V
    .locals 1
    .param p1    # Lkotlin/io/h$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "rootFile"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iput-object p1, p0, Lkotlin/io/h$b$b;->this$0:Lkotlin/io/h$b;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p2}, Lkotlin/io/h$c;-><init>(Ljava/io/File;)V

    .line 11
    return-void
.end method


# virtual methods
.method public b()Ljava/io/File;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lkotlin/io/h$b$b;->visited:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 8
    .line 9
    iput-boolean v0, p0, Lkotlin/io/h$b$b;->visited:Z

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lkotlin/io/h$c;->a()Ljava/io/File;

    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method
