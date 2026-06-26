.class public Lcom/linkedin/urls/UrlMarker;
.super Ljava/lang/Object;
.source "UrlMarker.java"


# instance fields
.field private _fragmentIndex:I

.field private _hostIndex:I

.field private _originalIndex:I

.field private _originalUrl:Ljava/lang/String;

.field private _pathIndex:I

.field private _portIndex:I

.field private _queryIndex:I

.field private _schemeIndex:I

.field private _usernamePasswordIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 16
    iput v0, p0, Lcom/linkedin/urls/UrlMarker;->_schemeIndex:I

    .line 17
    iput v0, p0, Lcom/linkedin/urls/UrlMarker;->_usernamePasswordIndex:I

    .line 18
    iput v0, p0, Lcom/linkedin/urls/UrlMarker;->_hostIndex:I

    .line 19
    iput v0, p0, Lcom/linkedin/urls/UrlMarker;->_portIndex:I

    .line 20
    iput v0, p0, Lcom/linkedin/urls/UrlMarker;->_pathIndex:I

    .line 21
    iput v0, p0, Lcom/linkedin/urls/UrlMarker;->_queryIndex:I

    .line 22
    iput v0, p0, Lcom/linkedin/urls/UrlMarker;->_fragmentIndex:I

    return-void
.end method


# virtual methods
.method public indexOf(Lcom/linkedin/urls/UrlPart;)I
    .locals 1

    .line 77
    sget-object v0, Lcom/linkedin/urls/UrlMarker$1;->$SwitchMap$com$linkedin$urls$UrlPart:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p1, -0x1

    return p1

    .line 91
    :pswitch_0
    iget p1, p0, Lcom/linkedin/urls/UrlMarker;->_fragmentIndex:I

    return p1

    .line 89
    :pswitch_1
    iget p1, p0, Lcom/linkedin/urls/UrlMarker;->_queryIndex:I

    return p1

    .line 87
    :pswitch_2
    iget p1, p0, Lcom/linkedin/urls/UrlMarker;->_pathIndex:I

    return p1

    .line 85
    :pswitch_3
    iget p1, p0, Lcom/linkedin/urls/UrlMarker;->_portIndex:I

    return p1

    .line 83
    :pswitch_4
    iget p1, p0, Lcom/linkedin/urls/UrlMarker;->_hostIndex:I

    return p1

    .line 81
    :pswitch_5
    iget p1, p0, Lcom/linkedin/urls/UrlMarker;->_usernamePasswordIndex:I

    return p1

    .line 79
    :pswitch_6
    iget p1, p0, Lcom/linkedin/urls/UrlMarker;->_schemeIndex:I

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setIndex(Lcom/linkedin/urls/UrlPart;I)V
    .locals 1

    .line 45
    sget-object v0, Lcom/linkedin/urls/UrlMarker$1;->$SwitchMap$com$linkedin$urls$UrlPart:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 65
    :pswitch_0
    iput p2, p0, Lcom/linkedin/urls/UrlMarker;->_fragmentIndex:I

    goto :goto_0

    .line 62
    :pswitch_1
    iput p2, p0, Lcom/linkedin/urls/UrlMarker;->_queryIndex:I

    goto :goto_0

    .line 59
    :pswitch_2
    iput p2, p0, Lcom/linkedin/urls/UrlMarker;->_pathIndex:I

    goto :goto_0

    .line 56
    :pswitch_3
    iput p2, p0, Lcom/linkedin/urls/UrlMarker;->_portIndex:I

    goto :goto_0

    .line 53
    :pswitch_4
    iput p2, p0, Lcom/linkedin/urls/UrlMarker;->_hostIndex:I

    goto :goto_0

    .line 50
    :pswitch_5
    iput p2, p0, Lcom/linkedin/urls/UrlMarker;->_usernamePasswordIndex:I

    goto :goto_0

    .line 47
    :pswitch_6
    iput p2, p0, Lcom/linkedin/urls/UrlMarker;->_schemeIndex:I

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public unsetIndex(Lcom/linkedin/urls/UrlPart;)V
    .locals 1

    const/4 v0, -0x1

    .line 98
    invoke-virtual {p0, p1, v0}, Lcom/linkedin/urls/UrlMarker;->setIndex(Lcom/linkedin/urls/UrlPart;I)V

    return-void
.end method
