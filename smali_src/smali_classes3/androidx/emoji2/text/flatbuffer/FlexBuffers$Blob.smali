.class public Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;
.super Landroidx/emoji2/text/flatbuffer/FlexBuffers$Sized;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/flatbuffer/FlexBuffers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Blob"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final EMPTY:Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;

    .line 3
    .line 4
    .line 5
    invoke-static {}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->a()Landroidx/emoji2/text/flatbuffer/ReadBuf;

    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1, v2, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;-><init>(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)V

    .line 11
    .line 12
    sput-object v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;->EMPTY:Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;

    .line 13
    return-void
.end method

.method constructor <init>(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Sized;-><init>(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)V

    .line 4
    return-void
.end method

.method public static c()Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;
    .locals 1

    .line 1
    sget-object v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;->EMPTY:Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 4

    .line 1
    .line 2
    const/16 v0, 0x22

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Object;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    .line 8
    .line 9
    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Object;->end:I

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;->b()I

    .line 13
    move-result v3

    .line 14
    .line 15
    .line 16
    invoke-interface {v1, v2, v3}, Landroidx/emoji2/text/flatbuffer/ReadBuf;->a(II)Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 24
    return-object p1
.end method

.method public bridge synthetic b()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Sized;->b()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Object;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    .line 3
    .line 4
    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Object;->end:I

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;->b()I

    .line 8
    move-result v2

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1, v2}, Landroidx/emoji2/text/flatbuffer/ReadBuf;->a(II)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method
