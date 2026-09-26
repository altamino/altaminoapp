.class final Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/HtmlTreeBuilderState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Constants"
.end annotation


# static fields
.field static final DdDt:[Ljava/lang/String;

.field static final Formatters:[Ljava/lang/String;

.field static final Headings:[Ljava/lang/String;

.field static final InBodyEndAdoptionFormatters:[Ljava/lang/String;

.field static final InBodyEndClosers:[Ljava/lang/String;

.field static final InBodyEndTableFosters:[Ljava/lang/String;

.field static final InBodyStartApplets:[Ljava/lang/String;

.field static final InBodyStartDrop:[Ljava/lang/String;

.field static final InBodyStartEmptyFormatters:[Ljava/lang/String;

.field static final InBodyStartInputAttribs:[Ljava/lang/String;

.field static final InBodyStartLiBreakers:[Ljava/lang/String;

.field static final InBodyStartMedia:[Ljava/lang/String;

.field static final InBodyStartOptions:[Ljava/lang/String;

.field static final InBodyStartPClosers:[Ljava/lang/String;

.field static final InBodyStartPreListing:[Ljava/lang/String;

.field static final InBodyStartRuby:[Ljava/lang/String;

.field static final InBodyStartToHead:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    const-string v0, "base"

    const-string v1, "basefont"

    const-string v2, "bgsound"

    const-string v3, "command"

    const-string v4, "link"

    const-string v5, "meta"

    const-string v6, "noframes"

    const-string v7, "script"

    const-string v8, "style"

    const-string v9, "title"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartToHead:[Ljava/lang/String;

    const-string v1, "address"

    const-string v2, "article"

    const-string v3, "aside"

    const-string v4, "blockquote"

    const-string v5, "center"

    const-string v6, "details"

    const-string v7, "dir"

    const-string v8, "div"

    const-string v9, "dl"

    const-string v10, "fieldset"

    const-string v11, "figcaption"

    const-string v12, "figure"

    const-string v13, "footer"

    const-string v14, "header"

    const-string v15, "hgroup"

    const-string v16, "menu"

    const-string v17, "nav"

    const-string v18, "ol"

    const-string v19, "p"

    const-string v20, "section"

    const-string v21, "summary"

    const-string v22, "ul"

    filled-new-array/range {v1 .. v22}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartPClosers:[Ljava/lang/String;

    const-string v1, "h1"

    const-string v2, "h2"

    const-string v3, "h3"

    const-string v4, "h4"

    const-string v5, "h5"

    const-string v6, "h6"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->Headings:[Ljava/lang/String;

    const-string v0, "listing"

    const-string v1, "pre"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartPreListing:[Ljava/lang/String;

    const-string v0, "div"

    const-string v1, "p"

    const-string v2, "address"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartLiBreakers:[Ljava/lang/String;

    const-string v0, "dd"

    const-string v1, "dt"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->DdDt:[Ljava/lang/String;

    const-string v1, "b"

    const-string v2, "big"

    const-string v3, "code"

    const-string v4, "em"

    const-string v5, "font"

    const-string v6, "i"

    const-string v7, "s"

    const-string v8, "small"

    const-string v9, "strike"

    const-string v10, "strong"

    const-string v11, "tt"

    const-string v12, "u"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->Formatters:[Ljava/lang/String;

    const-string v0, "marquee"

    const-string v1, "object"

    const-string v2, "applet"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartApplets:[Ljava/lang/String;

    const-string v1, "area"

    const-string v2, "br"

    const-string v3, "embed"

    const-string v4, "img"

    const-string v5, "keygen"

    const-string v6, "wbr"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartEmptyFormatters:[Ljava/lang/String;

    const-string v0, "source"

    const-string v1, "track"

    const-string v2, "param"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartMedia:[Ljava/lang/String;

    const-string v0, "name"

    const-string v1, "prompt"

    const-string v2, "action"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartInputAttribs:[Ljava/lang/String;

    const-string v0, "optgroup"

    const-string v1, "option"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartOptions:[Ljava/lang/String;

    const-string v0, "rp"

    const-string v1, "rt"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartRuby:[Ljava/lang/String;

    const-string v1, "caption"

    const-string v2, "col"

    const-string v3, "colgroup"

    const-string v4, "frame"

    const-string v5, "head"

    const-string v6, "tbody"

    const-string v7, "td"

    const-string v8, "tfoot"

    const-string v9, "th"

    const-string v10, "thead"

    const-string v11, "tr"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartDrop:[Ljava/lang/String;

    const-string v1, "address"

    const-string v2, "article"

    const-string v3, "aside"

    const-string v4, "blockquote"

    const-string v5, "button"

    const-string v6, "center"

    const-string v7, "details"

    const-string v8, "dir"

    const-string v9, "div"

    const-string v10, "dl"

    const-string v11, "fieldset"

    const-string v12, "figcaption"

    const-string v13, "figure"

    const-string v14, "footer"

    const-string v15, "header"

    const-string v16, "hgroup"

    const-string v17, "listing"

    const-string v18, "menu"

    const-string v19, "nav"

    const-string v20, "ol"

    const-string v21, "pre"

    const-string v22, "section"

    const-string v23, "summary"

    const-string v24, "ul"

    filled-new-array/range {v1 .. v24}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyEndClosers:[Ljava/lang/String;

    const-string v1, "a"

    const-string v2, "b"

    const-string v3, "big"

    const-string v4, "code"

    const-string v5, "em"

    const-string v6, "font"

    const-string v7, "i"

    const-string v8, "nobr"

    const-string v9, "s"

    const-string v10, "small"

    const-string v11, "strike"

    const-string v12, "strong"

    const-string v13, "tt"

    const-string v14, "u"

    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyEndAdoptionFormatters:[Ljava/lang/String;

    const-string v0, "thead"

    const-string v1, "tr"

    const-string v2, "table"

    const-string v3, "tbody"

    const-string v4, "tfoot"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyEndTableFosters:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method
