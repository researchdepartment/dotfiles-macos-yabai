/**
 * System Info
 * 
 * Version: 1.0
 * Last Updated: 2023/02/16
 * 
 * by researcx
 */

export const command = 'sidebar/cmd.sh';
export const refreshFrequency = 10000;
export const className = {
    top: '42px',
    right: '16px',
    color: 'rgba(210, 210, 210, 0.75)',
    fontWeight: 600,
    fontSize: '12px',
    textAlign: "right",
    textShadow: "-1px  1px  4px #000"
}

export const render = ({output, error}) => {
    if (output) {
        return (
            <pre style={{fontFamily: 'JetBrains Mono NL'}}>
                {String(output)}
            </pre>
        )
        return error ? (
            <div>Oops: <strong>{String(error)}</strong></div>
        ) : (
            <table>
                <tbody>
                    {items}
                </tbody>
            </table>
        );
    }
}