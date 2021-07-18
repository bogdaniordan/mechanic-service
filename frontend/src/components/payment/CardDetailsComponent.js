import React, {Component} from 'react';

class CardDetailsComponent extends Component {
    constructor(props) {
        super(props);
        this.state = {

        }
    }

    render() {
        return (
            <div>
                <div className="container py-5">
                    <div className="row mb-4">
                        <div className="col-lg-8 mx-auto text-center">
                            <h1 className="display-6">Please enter payment details</h1>
                        </div>
                    </div>
                    <div className="row">
                        <div className="col-lg-6 mx-auto">
                            <div className="card ">
                                <div className="card-header">
                                    <div className="tab-content">
                                        <div id="credit-card" className="tab-pane fade show active pt-3">
                                            <form role="form" method="post" action="">
                                                <div className="form-group"><label htmlFor="username">
                                                    <h6>Card Owner</h6>
                                                </label> <input type="text" name="card-name"
                                                                placeholder="Card Owner Name" className="form-control"
                                                                required/></div>
                                                <div className="form-group"><label htmlFor="cardNumber">
                                                    <h6>Card number</h6>
                                                </label>
                                                    <div className="input-group"><input type="tel" inputMode="numeric"
                                                                                        pattern="[0-9\s]{13,19}"
                                                                                        maxLength="19"
                                                                                        name="card-number"
                                                                                        placeholder="xxxx xxxx xxxx xxxx"
                                                                                        className="form-control "
                                                                                        required/>
                                                        <div className="input-group-append"><span
                                                            className="input-group-text text-muted"> <i
                                                            className="fab fa-cc-visa mx-1"></i> <i
                                                            className="fab fa-cc-mastercard mx-1"></i> <i
                                                            className="fab fa-cc-amex mx-1"></i> </span></div>
                                                    </div>
                                                </div>
                                                <div className="row">
                                                    <div className="col-sm-8">
                                                        <div className="form-group"><label><span className="hidden-xs">
                                                    <h6>Expiration Date</h6>
                                                </span></label>
                                                            <div className="input-group"><input type="number"
                                                                                                placeholder="MM"
                                                                                                name="month"
                                                                                                className="form-control"
                                                                                                required/> <input
                                                                type="number" placeholder="YY" name="year"
                                                                className="form-control" required/></div>
                                                        </div>
                                                    </div>
                                                    <div className="col-sm-4">
                                                        <div className="form-group mb-4"><label data-toggle="tooltip"
                                                                                                title="Three digit CV code on the back of your card">
                                                            <h6>CVV <i className="fa fa-question-circle d-inline"></i>
                                                            </h6>
                                                        </label> <input type="number" className="form-control"
                                                                        required/></div>
                                                    </div>
                                                </div>
                                                <p><strong>To pay: </strong></p>
                                                <div className="card-footer">
                                                    <button type="submit"
                                                            className="subscribe btn btn-primary btn-block shadow-sm"
                                                            onChange="location.href='/confirmation'"> Confirm Payment
                                                    </button>
                                                </div>
                                            </form>
                                        </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        );
    }
}

export default CardDetailsComponent;